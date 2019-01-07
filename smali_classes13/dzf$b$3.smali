.class final Ldzf$b$3;
.super Ljava/lang/Object;
.source "AbstractVoiceRecord.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldzf$a;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ldzf$b;


# direct methods
.method constructor <init>(Ldzf$b;Ljava/lang/String;Ldzf$a;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Ldzf$b;

    .prologue
    .line 230
    iput-object p1, p0, Ldzf$b$3;->d:Ldzf$b;

    iput-object p2, p0, Ldzf$b$3;->a:Ljava/lang/String;

    iput-object p3, p0, Ldzf$b$3;->b:Ldzf$a;

    iput-object p4, p0, Ldzf$b$3;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AbstractVoiceRecord"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 255
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Ldzf;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "deploy_expert"

    const-string/jumbo v2, "record_upload"

    const-string/jumbo v3, "duration"

    iget-object v4, p0, Ldzf$b$3;->b:Ldzf$a;

    iget-wide v4, v4, Ldzf$a;->b:J

    iget-object v6, p0, Ldzf$b$3;->b:Ldzf$a;

    iget-wide v6, v6, Ldzf$a;->a:J

    sub-long/2addr v4, v6

    .line 258
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Ldzf;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "deploy_expert"

    const-string/jumbo v2, "record_upload"

    const-string/jumbo v3, "size"

    iget-object v4, p0, Ldzf$b$3;->c:Ljava/io/File;

    .line 260
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Ldzf$b$3;->d:Ldzf$b;

    invoke-virtual {v0}, Ldzf$b;->a()V

    .line 262
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 233
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    check-cast p1, Lifx;

    .line 1237
    if-nez p1, :cond_0

    .line 1238
    iget-object v0, p0, Ldzf$b$3;->d:Ldzf$b;

    invoke-virtual {v0}, Ldzf$b;->a()V

    .line 1239
    :goto_0
    return-void

    .line 2026
    :cond_0
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1243
    iget-object v1, p0, Ldzf$b$3;->a:Ljava/lang/String;

    iget-object v2, p0, Ldzf$b$3;->b:Ldzf$a;

    iget-wide v2, v2, Ldzf$a;->a:J

    iget-object v4, p0, Ldzf$b$3;->b:Ldzf$a;

    iget-wide v4, v4, Ldzf$a;->b:J

    invoke-static/range {v0 .. v5}, Lduj;->a(Ljava/lang/String;Ljava/lang/String;JJ)Lduj;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Ldzf$b$3;->d:Ldzf$b;

    invoke-static {v1}, Ldzf$b;->b(Ldzf$b;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lduk;

    iget-object v3, p0, Ldzf$b$3;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lduk;-><init>(Ljava/lang/String;Lduj;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    sget-object v0, Ldzf;->e:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "deploy_expert"

    const-string/jumbo v2, "record_upload"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Ldzf$b$3;->d:Ldzf$b;

    invoke-static {v0}, Ldzf$b;->c(Ldzf$b;)V

    .line 1249
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AbstractVoiceRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getMediaId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3026
    iget-object v3, p1, Lifx;->a:Ljava/lang/String;

    .line 1249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "AbstractVoiceRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAuthMediaId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3034
    iget-object v3, p1, Lifx;->b:Ljava/lang/String;

    .line 1250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
