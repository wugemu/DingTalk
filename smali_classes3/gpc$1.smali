.class final Lgpc$1;
.super Ljava/lang/Object;
.source "TaskApiImpl.java"

# interfaces
.implements Lgpd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpc;->a(Landroid/content/Context;Lgpa;Lgqr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqr;

.field final synthetic b:Lgpc;


# direct methods
.method constructor <init>(Lgpc;Lgqr;)V
    .locals 0
    .param p1, "this$0"    # Lgpc;

    .prologue
    .line 66
    iput-object p1, p0, Lgpc$1;->b:Lgpc;

    iput-object p2, p0, Lgpc$1;->a:Lgqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 78
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lgpc$1;->a:Lgqr;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-interface {v0, p2}, Lgqr;->onSuccess(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    .restart local p2    # "info":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lgpc$1;->a:Lgqr;

    const-string/jumbo v1, "500"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->cspace_download_failed:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgqr;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "totalSize"    # J
    .param p5, "progressSize"    # J

    .prologue
    .line 69
    instance-of v0, p2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lgpc$1;->a:Lgqr;

    const/4 v1, 0x1

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lgqr;->onProgress(IJJ)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lgpc$1;->a:Lgqr;

    const/4 v1, 0x2

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lgqr;->onProgress(IJJ)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lgpc$1;->a:Lgqr;

    invoke-interface {v0, p3, p4}, Lgqr;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lgpc$1;->a:Lgqr;

    const-string/jumbo v1, "600001"

    const-string/jumbo v2, "cancel"

    invoke-interface {v0, v1, v2}, Lgqr;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
