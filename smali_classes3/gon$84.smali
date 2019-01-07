.class public final Lgon$84;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lgon;


# direct methods
.method public constructor <init>(Lgon;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 4135
    iput-object p1, p0, Lgon$84;->f:Lgon;

    iput-object p2, p0, Lgon$84;->a:Ljava/lang/String;

    iput-object p3, p0, Lgon$84;->b:Lcma;

    iput-object p4, p0, Lgon$84;->c:Ljava/lang/String;

    iput-object p5, p0, Lgon$84;->d:Ljava/lang/String;

    iput-object p6, p0, Lgon$84;->e:Ljava/lang/String;

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
    .line 4159
    .line 5164
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SpaceRPC.createDentryLink"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", targetSpaceId: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgon$84;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ", targetFolderId: "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lgon$84;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, ", sourceSpaceId: "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lgon$84;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ", sourceDentryId: "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lgon$84;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5169
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 5170
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 5169
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4160
    iget-object v0, p0, Lgon$84;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4161
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4135
    check-cast p1, Lghz;

    .line 6138
    if-eqz p1, :cond_0

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 6139
    :cond_0
    const-string/jumbo v0, "RESULT_NULL"

    const-string/jumbo v1, "result is null"

    invoke-virtual {p0, v0, v1, v2}, Lgon$84;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6150
    :goto_0
    return-void

    .line 6142
    :cond_1
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 7044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 6142
    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 6143
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$84;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6146
    :cond_2
    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    .line 6147
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    .line 6148
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 6149
    :cond_3
    const-string/jumbo v0, "RESULT_NULL_DATA"

    const-string/jumbo v1, "result data is null"

    invoke-virtual {p0, v0, v1, v2}, Lgon$84;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6152
    :cond_4
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 6153
    iget-object v1, p0, Lgon$84;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 6154
    iget-object v1, p0, Lgon$84;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
