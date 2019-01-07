.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->a:Ljava/util/List;

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
    .line 301
    check-cast p1, Ljava/util/List;

    .line 1304
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1$1;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 326
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[Msg][MSG SEARCH] get message from server error, errorCode = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->d:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    invoke-static {v1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    invoke-static {v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    .line 328
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 322
    return-void
.end method
