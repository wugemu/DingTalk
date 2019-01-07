.class public final Lgon$82;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 4054
    iput-object p1, p0, Lgon$82;->c:Lgon;

    iput-object p2, p0, Lgon$82;->a:Lcma;

    iput-object p3, p0, Lgon$82;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4099
    .line 5104
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "infoAclShare: shortLink:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgon$82;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5105
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 5106
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 5105
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4100
    iget-object v0, p0, Lgon$82;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4101
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 4054
    check-cast p1, Lghz;

    .line 6057
    if-nez p1, :cond_0

    .line 6058
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "(result is null)"

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6091
    :goto_0
    return-void

    .line 6062
    :cond_0
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 7044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 6062
    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 6063
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6067
    :cond_1
    iget-object v0, p1, Lghz;->c:Lghw;

    if-nez v0, :cond_2

    .line 6068
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "(result data is null)"

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6072
    :cond_2
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-nez v0, :cond_3

    .line 6073
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "(result dentry is null)"

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6077
    :cond_3
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6078
    :cond_4
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "(result dentry item is empty)"

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6082
    :cond_5
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 6083
    if-nez v0, :cond_6

    .line 6084
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "(result dentry item 0 is null)"

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6088
    :cond_6
    iget-object v1, p1, Lghz;->c:Lghw;

    iget-object v1, v1, Lghw;->a:Lghi;

    iget-object v0, v0, Lghg;->p:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lgoo;->a(Lghi;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 6089
    if-nez v0, :cond_7

    .line 6090
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "(dentryModel is null)"

    invoke-virtual {p0, v0, v1, v2}, Lgon$82;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 6094
    :cond_7
    iget-object v1, p0, Lgon$82;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
