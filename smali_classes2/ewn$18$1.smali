.class final Lewn$18$1;
.super Ljava/lang/Object;
.source "TeleConfQuickStartCallHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewn$18;->onClick(Landroid/content/DialogInterface;I)V
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewn$18;


# direct methods
.method constructor <init>(Lewn$18;)V
    .locals 0
    .param p1, "this$1"    # Lewn$18;

    .prologue
    .line 279
    iput-object p1, p0, Lewn$18$1;->a:Lewn$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1282
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_1

    .line 1283
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Create biz call: "

    aput-object v3, v2, v4

    iget-object v3, p0, Lewn$18$1;->a:Lewn$18;

    iget v3, v3, Lewn$18;->c:I

    .line 1284
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1283
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lewn$18$1;->a:Lewn$18;

    iget v0, v0, Lewn$18;->c:I

    const/16 v1, 0x2774

    if-ne v0, v1, :cond_0

    .line 1287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1288
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lewn$18$1;->a:Lewn$18;

    iget-object v2, v2, Lewn$18;->d:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->valueOf()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "phone_calllist_vip_servicecall_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1292
    :cond_0
    iget-object v0, p0, Lewn$18$1;->a:Lewn$18;

    iget-object v0, v0, Lewn$18;->e:Landroid/app/Activity;

    iget-object v1, p0, Lewn$18$1;->a:Lewn$18;

    iget-wide v2, v1, Lewn$18;->b:J

    invoke-static {v0, v2, v3, p1}, Lewb;->a(Landroid/content/Context;JLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    :goto_0
    return-void

    .line 1294
    :cond_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Biz call invalid and goto apply-for-biz-call"

    aput-object v3, v2, v4

    .line 1295
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1294
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string/jumbo v0, "https://tms.dingtalk.com/markets/dingtalk/distinguish_business_call?corpId=%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lewn$18$1;->a:Lewn$18;

    iget-object v2, v2, Lewn$18;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1297
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lewn$18$1;->a:Lewn$18;

    iget-object v2, v2, Lewn$18;->e:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 308
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewn;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Create biz call exp "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 309
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 304
    return-void
.end method
