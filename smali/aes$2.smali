.class final Laes$2;
.super Ljava/lang/Object;
.source "DingtalkMailDailyHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laes;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ding/base/interfaces/DingInterface;

.field final synthetic c:Laes;


# direct methods
.method constructor <init>(Laes;Ljava/lang/String;Lcom/alibaba/android/ding/base/interfaces/DingInterface;)V
    .locals 0
    .param p1, "this$0"    # Laes;

    .prologue
    .line 329
    iput-object p1, p0, Laes$2;->c:Laes;

    iput-object p2, p0, Laes$2;->a:Ljava/lang/String;

    iput-object p3, p0, Laes$2;->b:Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 329
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1332
    if-eqz p1, :cond_1

    .line 1333
    iget-object v0, p0, Laes$2;->c:Laes;

    .line 2047
    iget-object v0, v0, Laes;->h:Ljava/util/HashMap;

    .line 1333
    iget-object v1, p0, Laes$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Laes$2;->b:Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1337
    sget v0, Laxo$i;->dt_mail_maildetail_plugin_confirmding:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1339
    :goto_0
    return-void

    :cond_0
    sget v0, Laxo$i;->dt_mail_maildetail_plugin_confirmagain:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0

    .line 1342
    :cond_1
    sget v0, Laxo$i;->dt_mail_maildetail_plugin_invalidparam:I

    invoke-static {v0}, Lhcn;->a(I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 352
    sget v0, Laxo$i;->dt_mail_maildetail_plugin_invalidparam:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 353
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "DingtalkMailDailyHelper"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "confirmDing: ding:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Laes$2;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 354
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 348
    return-void
.end method
