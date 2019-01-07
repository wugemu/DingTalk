.class final Lgdy$3;
.super Ljava/lang/Object;
.source "DentryOperationUseCase.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdy;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdy;


# direct methods
.method constructor <init>(Lgdy;)V
    .locals 0
    .param p1, "this$0"    # Lgdy;

    .prologue
    .line 442
    iput-object p1, p0, Lgdy$3;->a:Lgdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    const/4 v1, 0x7

    invoke-static {v1, p2, p3}, Lggr;->a(ILjava/lang/String;Ljava/lang/String;)Lggs;

    move-result-object v0

    .line 458
    .local v0, "exception":Lggs;
    iget-object v1, v0, Lggs;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lfzs$h;->delete_error:I

    .line 459
    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object p3

    .line 460
    :goto_1
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object p3, v0, Lggs;->b:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 442
    check-cast p1, Ljava/lang/Boolean;

    .line 1445
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, v1, v1}, Lgdy$3;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lgdy$3;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 465
    return-void
.end method
