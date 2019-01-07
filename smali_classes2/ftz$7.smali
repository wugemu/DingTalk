.class public final Lftz$7;
.super Ljava/lang/Object;
.source "NameCardExchangePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/CardRoomObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lftz;


# direct methods
.method public constructor <init>(Lftz;)V
    .locals 0
    .param p1, "this$0"    # Lftz;

    .prologue
    .line 199
    iput-object p1, p0, Lftz$7;->a:Lftz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 199
    check-cast p1, Ljava/util/List;

    .line 1202
    const-string/jumbo v0, "getNewReceivedCards onDataReceived"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    iget-object v0, p0, Lftz$7;->a:Lftz;

    .line 2032
    iget-object v0, v0, Lftz;->a:Lfty$a;

    .line 1203
    invoke-interface {v0, p1}, Lfty$a;->a(Ljava/util/List;)V

    .line 199
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 212
    const-string/jumbo v0, "getNewReceivedCards onException, code: %s, reason: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lftz$7;->a:Lftz;

    .line 1032
    iget-object v0, v0, Lftz;->a:Lfty$a;

    .line 213
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfty$a;->a(Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 208
    return-void
.end method
