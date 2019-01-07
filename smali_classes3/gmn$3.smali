.class final Lgmn$3;
.super Ljava/lang/Object;
.source "SpaceMenuDownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmn;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lgmb;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lgmn;


# direct methods
.method constructor <init>(Lgmn;Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lgmn;

    .prologue
    .line 81
    iput-object p1, p0, Lgmn$3;->d:Lgmn;

    iput-object p2, p0, Lgmn$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lgmn$3;->b:Lgmb;

    iput-object p4, p0, Lgmn$3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lgmn$3;->d:Lgmn;

    iget-object v1, p0, Lgmn$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lgmn$3;->b:Lgmb;

    iget-object v3, p0, Lgmn$3;->c:Ljava/lang/Object;

    .line 1044
    invoke-virtual {v0, v1, v2, v3}, Lgmn;->b(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V

    .line 85
    return-void
.end method
