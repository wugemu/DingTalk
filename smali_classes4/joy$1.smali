.class final Ljoy$1;
.super Ljava/lang/Object;
.source "HotPatchDownloaderListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljoy;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljoy;


# direct methods
.method constructor <init>(Ljoy;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Ljoy$1;->a:Ljoy;

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
    .line 61
    iget-object v0, p0, Ljoy$1;->a:Ljoy;

    .line 1017
    iget-object v0, v0, Ljoy;->b:Landroid/content/Context;

    .line 61
    const-string/jumbo v1, "Patch \u5305\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u51c6\u5907\u52a0\u8f7d\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    return-void
.end method
