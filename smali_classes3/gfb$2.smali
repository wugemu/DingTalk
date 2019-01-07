.class final Lgfb$2;
.super Ljava/lang/Object;
.source "SpaceMainPagePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfb;->b()V
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
        "Lgog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfb;


# direct methods
.method constructor <init>(Lgfb;)V
    .locals 0
    .param p1, "this$0"    # Lgfb;

    .prologue
    .line 80
    iput-object p1, p0, Lgfb$2;->a:Lgfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 80
    check-cast p1, Lgog;

    .line 1083
    if-nez p1, :cond_0

    .line 1084
    iget-object v0, p0, Lgfb$2;->a:Lgfb;

    .line 2024
    iget-object v0, v0, Lgfb;->b:Lgfa$b;

    .line 1084
    const-string/jumbo v1, ""

    iget-object v2, p0, Lgfb$2;->a:Lgfb;

    .line 3024
    iget-object v2, v2, Lgfb;->a:Landroid/app/Activity;

    .line 1084
    sget v3, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgfa$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-wide v0, p1, Lgog;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lgfb$2;->a:Lgfb;

    .line 4024
    iget-object v0, v0, Lgfb;->b:Lgfa$b;

    .line 1089
    iget-wide v2, p1, Lgog;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lgog;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgfa$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_1
    iget-object v0, p0, Lgfb$2;->a:Lgfb;

    .line 5024
    iget-object v0, v0, Lgfb;->b:Lgfa$b;

    .line 1093
    iget-object v1, p1, Lgog;->c:Ljava/lang/String;

    iget-object v2, p1, Lgog;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgfa$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lgfb$2;->a:Lgfb;

    .line 1024
    iget-object v0, v0, Lgfb;->b:Lgfa$b;

    .line 103
    invoke-interface {v0, p1, p2}, Lgfa$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 99
    return-void
.end method
