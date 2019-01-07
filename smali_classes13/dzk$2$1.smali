.class final Ldzk$2$1;
.super Ljava/lang/Object;
.source "VoiceRecordImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzk$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldzk$2;


# direct methods
.method constructor <init>(Ldzk$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Ldzk$2;

    .prologue
    .line 258
    iput-object p1, p0, Ldzk$2$1;->b:Ldzk$2;

    iput-object p2, p0, Ldzk$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 258
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    invoke-static {p1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1261
    if-nez v0, :cond_0

    .line 1262
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    const-string/jumbo v2, "bindRecordList, false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Ldzk$2$1;->b:Ldzk$2;

    iget-object v0, v0, Ldzk$2;->a:Lcma;

    const-string/jumbo v1, "err"

    const-string/jumbo v2, "err"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :goto_0
    return-void

    .line 1266
    :cond_0
    sget-object v0, Ldzf;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "deploy_expert"

    const-string/jumbo v2, "record_bind"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Ldzk$2$1;->b:Ldzk$2;

    iget-object v0, v0, Ldzk$2;->d:Ldzk;

    iget-object v1, p0, Ldzk$2$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Ldzk;->b(Ldzk;Ljava/util/List;)V

    .line 1269
    iget-object v0, p0, Ldzk$2$1;->b:Ldzk$2;

    iget-object v0, v0, Ldzk$2;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1270
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "bindRecordList, ok, size:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Ldzk$2$1;->a:Ljava/util/List;

    .line 1271
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", orderId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Ldzk$2$1;->b:Ldzk$2;

    iget-object v4, v4, Ldzk$2;->d:Ldzk;

    iget-wide v4, v4, Ldzk;->b:J

    .line 1272
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1271
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1270
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Ldzk$2$1;->b:Ldzk$2;

    iget-object v0, v0, Ldzk$2;->d:Ldzk;

    invoke-static {v0}, Ldzk;->i(Ldzk;)V

    .line 284
    iget-object v0, p0, Ldzk$2$1;->b:Ldzk$2;

    iget-object v0, v0, Ldzk$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Ldzf;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "deploy_expert"

    const-string/jumbo v2, "record_bind"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 278
    return-void
.end method
