.class final Lglj$b$3;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lglj$b;->a(Lgkl;J)V
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
        "Lgkl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lglj$b;


# direct methods
.method constructor <init>(Lglj$b;J)V
    .locals 0
    .param p1, "this$0"    # Lglj$b;

    .prologue
    .line 517
    iput-object p1, p0, Lglj$b$3;->b:Lglj$b;

    iput-wide p2, p0, Lglj$b$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 517
    .line 1520
    iget-object v0, p0, Lglj$b$3;->b:Lglj$b;

    iget-object v0, v0, Lglj$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    iget-object v0, p0, Lglj$b$3;->b:Lglj$b;

    invoke-virtual {v0}, Lglj$b;->c()V

    .line 1524
    iget-object v1, p0, Lglj$b$3;->b:Lglj$b;

    iget-wide v2, p0, Lglj$b$3;->a:J

    const-wide/16 v4, 0x3ea

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lglj$b;->a(Lglj$b;Z)V

    .line 517
    :cond_0
    return-void

    .line 1524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 533
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "setAclPermission: modifyAclMember"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lglj$b$3;->b:Lglj$b;

    iget-object v0, v0, Lglj$b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lglj$b$3;->b:Lglj$b;

    invoke-virtual {v0}, Lglj$b;->c()V

    .line 541
    iget-object v0, p0, Lglj$b$3;->b:Lglj$b;

    .line 1387
    const/4 v0, 0x0

    .line 541
    invoke-static {p1, p2, v0}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 529
    return-void
.end method
