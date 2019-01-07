.class final Lbjv$28;
.super Ljava/lang/Object;
.source "DingNavUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lbjv$28;->a:Landroid/content/Context;

    iput-object p2, p0, Lbjv$28;->b:Ljava/lang/String;

    iput-object p3, p0, Lbjv$28;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Lbjv$28;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 439
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1442
    if-eqz p1, :cond_0

    .line 1443
    iget-object v0, p0, Lbjv$28;->a:Landroid/content/Context;

    iget-object v1, p0, Lbjv$28;->b:Ljava/lang/String;

    .line 1681
    iget v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 1443
    iget-object v3, p0, Lbjv$28;->c:Landroid/os/Bundle;

    iget-boolean v4, p0, Lbjv$28;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    :goto_0
    return-void

    .line 1445
    :cond_0
    iget-object v0, p0, Lbjv$28;->a:Landroid/content/Context;

    iget-object v1, p0, Lbjv$28;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lbjv$28;->c:Landroid/os/Bundle;

    iget-boolean v4, p0, Lbjv$28;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 456
    iget-object v0, p0, Lbjv$28;->a:Landroid/content/Context;

    iget-object v1, p0, Lbjv$28;->b:Ljava/lang/String;

    iget-object v2, p0, Lbjv$28;->c:Landroid/os/Bundle;

    iget-boolean v3, p0, Lbjv$28;->d:Z

    invoke-static {v0, v1, v4, v2, v3}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 457
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "nav2DingDetailPage, not exist in cache. dingId:"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lbjv$28;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", code="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 452
    return-void
.end method
