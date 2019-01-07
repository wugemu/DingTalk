.class public final Lddw$1;
.super Ljava/lang/Object;
.source "BotInfoFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddw$a;


# direct methods
.method public constructor <init>(Lddw$a;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lddw$1;->a:Lddw$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1027
    iget-object v0, p0, Lddw$1;->a:Lddw$a;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lddw$1;->a:Lddw$a;

    invoke-interface {v0, p1}, Lddw$a;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v0, p0, Lddw$1;->a:Lddw$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lddw$1;->a:Lddw$a;

    invoke-interface {v0, v4}, Lddw$a;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 42
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "fetch bot model error: code"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",reason:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 35
    return-void
.end method
