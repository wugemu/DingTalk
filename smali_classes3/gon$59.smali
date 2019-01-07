.class final Lgon$59;
.super Lcmi;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;JZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgkh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3151
    iput-object p1, p0, Lgon$59;->f:Lgon;

    iput-object p2, p0, Lgon$59;->a:Lcma;

    iput-object p3, p0, Lgon$59;->b:Ljava/lang/String;

    iput-object p4, p0, Lgon$59;->c:Ljava/lang/String;

    iput-wide p5, p0, Lgon$59;->d:J

    iput-boolean p7, p0, Lgon$59;->e:Z

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3176
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "makeFolderSafeModeEnable: setReadOnly: spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgon$59;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", folderId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lgon$59;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", groupId: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lgon$59;->d:J

    .line 3179
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", enable: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lgon$59;->e:Z

    .line 3180
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3176
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3181
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 3182
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 3181
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 3171
    iget-object v0, p0, Lgon$59;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    invoke-direct {p0, p1, p2, p3}, Lgon$59;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3173
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 3151
    check-cast p1, Lgkh;

    .line 4154
    if-nez p1, :cond_0

    .line 4155
    iget-object v0, p0, Lgon$59;->a:Lcma;

    const-string/jumbo v1, "500"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    const-string/jumbo v0, "(result is null)"

    invoke-direct {p0, v0, v4, v4}, Lgon$59;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4162
    :goto_0
    return-void

    .line 4160
    :cond_0
    iget-object v0, p1, Lgkh;->a:Ljava/lang/Long;

    .line 5044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 4160
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4161
    iget-object v0, p0, Lgon$59;->a:Lcma;

    iget-object v1, p1, Lgkh;->c:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 4165
    :cond_1
    iget-object v0, p0, Lgon$59;->a:Lcma;

    iget-object v1, p1, Lgkh;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgkh;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4166
    iget-object v0, p1, Lgkh;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgkh;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lgon$59;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
