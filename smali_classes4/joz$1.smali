.class final Ljoz$1;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljoz;->a(Ljava/lang/String;IZZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljoz;


# direct methods
.method constructor <init>(Ljoz;Z)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Ljoz$1;->b:Ljoz;

    iput-boolean p2, p0, Ljoz$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 532
    iget-boolean v0, p0, Ljoz$1;->a:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Ljoz$1;->b:Ljoz;

    invoke-static {v0}, Ljoz;->a(Ljoz;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "Patch \u52a0\u8f7d\u6210\u529f\uff01\uff01\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Ljoz$1;->b:Ljoz;

    invoke-static {v0}, Ljoz;->a(Ljoz;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "\u8bf7\u91cd\u542f\u5e94\u7528 patch \u751f\u6548\uff01\uff01\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
