.class final Lgln$3;
.super Ljava/lang/Object;
.source "SpaceTransferManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgln;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgln;


# direct methods
.method constructor <init>(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgln;

    .prologue
    .line 210
    iput-object p1, p0, Lgln$3;->d:Lgln;

    iput-object p2, p0, Lgln$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-wide p3, p0, Lgln$3;->b:J

    iput-object p5, p0, Lgln$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 210
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3213
    if-eqz p1, :cond_2

    .line 3214
    iget-object v0, p0, Lgln$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPrivateTag(I)V

    .line 3215
    invoke-static {p1}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lgln$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3216
    invoke-static {v0}, Lgpv;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lgln$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 3219
    :cond_0
    iget-object v0, p0, Lgln$3;->d:Lgln;

    iget-wide v2, p0, Lgln$3;->b:J

    iget-object v1, p0, Lgln$3;->c:Ljava/lang/String;

    .line 4042
    invoke-virtual {v0, p1, v1}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V

    .line 3219
    :cond_1
    :goto_0
    return-void

    .line 3222
    :cond_2
    iget-object v0, p0, Lgln$3;->d:Lgln;

    iget-object v1, p0, Lgln$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "copySpaceDo.infoDentry"

    const-string/jumbo v3, "null result"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lgln;->a(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    iget-object v0, p0, Lgln$3;->d:Lgln;

    .line 5042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 3223
    if-eqz v0, :cond_1

    .line 3224
    iget-object v0, p0, Lgln$3;->d:Lgln;

    .line 6042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 3224
    const-string/jumbo v1, ""

    iget-object v2, p0, Lgln$3;->d:Lgln;

    .line 7042
    iget-object v2, v2, Lgln;->a:Landroid/content/Context;

    .line 3224
    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lgln$3;->d:Lgln;

    iget-object v1, p0, Lgln$3;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "copySpaceDo.infoDentry"

    invoke-static {v0, v1, v2, p1, p2}, Lgln;->a(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lgln$3;->d:Lgln;

    .line 1042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lgln$3;->d:Lgln;

    .line 2042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 237
    const-string/jumbo v1, ""

    iget-object v2, p0, Lgln$3;->d:Lgln;

    .line 3042
    iget-object v2, v2, Lgln;->a:Landroid/content/Context;

    .line 237
    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 231
    return-void
.end method
