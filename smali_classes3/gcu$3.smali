.class public final Lgcu$3;
.super Ljava/lang/Object;
.source "FavoriteProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgcu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgcu;


# direct methods
.method public constructor <init>(Lgcu;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgcu;

    .prologue
    .line 116
    iput-object p1, p0, Lgcu$3;->b:Lgcu;

    iput-object p2, p0, Lgcu$3;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lgcu$3;->a:Lcma;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 116
    check-cast p1, Ljava/util/List;

    .line 1119
    if-eqz p1, :cond_0

    .line 1120
    iget-object v0, p0, Lgcu$3;->a:Lcma;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1121
    invoke-static {}, Lgas;->a()Lgas;

    move-result-object v0

    invoke-virtual {v0}, Lgas;->b()V

    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lgcu$3;->a:Lcma;

    invoke-interface {v0, v1, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
