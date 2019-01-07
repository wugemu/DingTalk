.class final Lgon$7;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 1037
    iput-object p1, p0, Lgon$7;->d:Lgon;

    iput-object p2, p0, Lgon$7;->a:Lcma;

    iput-object p3, p0, Lgon$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1078
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpaceRPC.infoDeleteDentry: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$7;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$7;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 1081
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1080
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1071
    iget-object v0, p0, Lgon$7;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lgon$7;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lgon$7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1037
    check-cast p1, Lghz;

    .line 2040
    if-eqz p1, :cond_1

    .line 2041
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 2042
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 2043
    iget-object v1, p0, Lgon$7;->a:Lcma;

    if-eqz v1, :cond_1

    .line 2044
    iget-object v1, p1, Lghz;->c:Lghw;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    .line 2046
    :cond_0
    iget-object v1, p0, Lgon$7;->b:Ljava/lang/String;

    .line 2047
    invoke-static {v0, v1}, Lgoo;->a(Lghi;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 2048
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v1

    iget-object v2, p0, Lgon$7;->a:Lcma;

    .line 2049
    invoke-virtual {v1, v0, v2}, Lgoj;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    .line 2054
    :cond_1
    :goto_0
    return-void

    .line 2053
    :cond_2
    iget-object v0, p0, Lgon$7;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2054
    iget-object v1, p0, Lgon$7;->a:Lcma;

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 2055
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    .line 2054
    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2055
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    .line 2060
    :cond_4
    iget-object v1, p0, Lgon$7;->a:Lcma;

    if-eqz v1, :cond_5

    .line 2061
    iget-object v1, p0, Lgon$7;->a:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2063
    :cond_5
    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lgon$7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "(resultCode is null)"

    goto :goto_2
.end method
