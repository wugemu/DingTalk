.class final Ljoz$3;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljoz;->a(Ljpc;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljoz;


# direct methods
.method constructor <init>(Ljoz;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Ljoz$3;->a:Ljoz;

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
    .line 650
    iget-object v0, p0, Ljoz$3;->a:Ljoz;

    invoke-static {v0}, Ljoz;->a(Ljoz;)Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "patch \u5305\u5f00\u59cb\u4e0b\u8f7d....."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 651
    return-void
.end method
