.class final Lger$2;
.super Ljava/lang/Object;
.source "SpaceCreateFilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lger;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lger;


# direct methods
.method constructor <init>(Lger;)V
    .locals 0
    .param p1, "this$0"    # Lger;

    .prologue
    .line 190
    iput-object p1, p0, Lger$2;->a:Lger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 190
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1193
    if-nez p1, :cond_0

    .line 1194
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lger$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    :goto_0
    return-void

    .line 1198
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lger$2;->a:Lger;

    invoke-static {v3}, Lger;->a(Lger;)Lcma;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lger$2;->a:Lger;

    invoke-static {v0}, Lger;->a(Lger;)Lcma;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 208
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 203
    return-void
.end method
