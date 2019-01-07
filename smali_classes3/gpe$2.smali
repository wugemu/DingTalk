.class public final Lgpe$2;
.super Ljava/lang/Object;
.source "UploadProxy.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcma;

.field final synthetic d:Lgpe;


# direct methods
.method public constructor <init>(Lgpe;Ljava/util/List;JLcma;)V
    .locals 1
    .param p1, "this$0"    # Lgpe;

    .prologue
    .line 255
    iput-object p1, p0, Lgpe$2;->d:Lgpe;

    iput-object p2, p0, Lgpe$2;->a:Ljava/util/List;

    iput-wide p3, p0, Lgpe$2;->b:J

    iput-object p5, p0, Lgpe$2;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 255
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1258
    if-nez v1, :cond_0

    .line 1259
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgpe$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :goto_0
    return-void

    .line 1262
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    const-string/jumbo v2, "0"

    iget-object v3, p0, Lgpe$2;->a:Ljava/util/List;

    iget-wide v4, p0, Lgpe$2;->b:J

    iget-object v6, p0, Lgpe$2;->c:Lcma;

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLcma;)V

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
    const/4 v3, 0x0

    .line 272
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "UploadProxy"

    const-string/jumbo v2, "checkBeforeUpload"

    invoke-static {v2, p1, p1, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lgpe$2;->c:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method
