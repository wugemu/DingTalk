.class final Lglj$c$1;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lglj$c;->d()V
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
.field final synthetic a:Lglj$c;


# direct methods
.method constructor <init>(Lglj$c;)V
    .locals 0
    .param p1, "this$0"    # Lglj$c;

    .prologue
    .line 612
    iput-object p1, p0, Lglj$c$1;->a:Lglj$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 612
    check-cast p1, Ljava/lang/Boolean;

    .line 3615
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    iget-object v0, v0, Lglj$c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 3618
    if-eqz v0, :cond_1

    .line 3620
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    invoke-static {v0}, Lglj$c;->a(Lglj$c;)V

    :cond_0
    :goto_0
    return-void

    .line 3623
    :cond_1
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    .line 4564
    invoke-virtual {v0}, Lglj$c;->e()V

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
    .line 633
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceLinkManager"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkAndRecallPermission: hasAclPermission"

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

    .line 637
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    iget-object v0, v0, Lglj$c;->a:Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 641
    :cond_0
    sget-object v0, Lggr;->a:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    invoke-virtual {v0}, Lglj$c;->c()V

    .line 644
    sget v0, Lfzs$h;->dt_cspace_fail_tip:I

    .line 645
    invoke-static {v0}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lglj$c$1;->a:Lglj$c;

    .line 1564
    iget-object v1, v1, Lglj$c;->b:Lcma;

    .line 644
    invoke-static {p1, v0, v1}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 647
    :cond_1
    const-string/jumbo v0, "13020005"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "13020008"

    .line 648
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    :cond_2
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    .line 2564
    invoke-virtual {v0}, Lglj$c;->e()V

    goto :goto_0

    .line 654
    :cond_3
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lglj$c$1;->a:Lglj$c;

    .line 3564
    invoke-virtual {v0}, Lglj$c;->e()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 629
    return-void
.end method
