.class public final Lgon$86;
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
        "Lgin;",
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
    .line 4189
    iput-object p1, p0, Lgon$86;->c:Lgon;

    iput-object p2, p0, Lgon$86;->a:Lcma;

    iput-object p3, p0, Lgon$86;->b:Ljava/lang/String;

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
    .line 4209
    .line 5214
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SpaceRPC.infoCoFolder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ", coFolderConvId: "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgon$86;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5216
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    .line 5217
    invoke-static {v0, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 5216
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    iget-object v0, p0, Lgon$86;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4189
    check-cast p1, Lgin;

    .line 6192
    if-nez p1, :cond_0

    .line 6193
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lgon$86;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6202
    :goto_0
    return-void

    .line 6196
    :cond_0
    iget-object v0, p1, Lgin;->a:Ljava/lang/Boolean;

    .line 7022
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 6196
    if-nez v0, :cond_1

    .line 6197
    iget-object v0, p1, Lgin;->b:Ljava/lang/Integer;

    .line 7033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 6197
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgin;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lgon$86;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6200
    :cond_1
    iget-object v0, p1, Lgin;->d:Lgit;

    if-nez v0, :cond_2

    .line 6201
    const-string/jumbo v0, "RESULT_NULL_DATA"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lgon$86;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6204
    :cond_2
    iget-object v0, p0, Lgon$86;->a:Lcma;

    iget-object v1, p1, Lgin;->d:Lgit;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
