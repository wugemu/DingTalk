.class final Lgmx$2;
.super Ljava/lang/Object;
.source "SpaceMenuLinkShareDeleteHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmx;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgmb;

.field final synthetic b:Lgmx;


# direct methods
.method constructor <init>(Lgmx;Lgmb;)V
    .locals 0
    .param p1, "this$0"    # Lgmx;

    .prologue
    .line 44
    iput-object p1, p0, Lgmx$2;->b:Lgmx;

    iput-object p2, p0, Lgmx$2;->a:Lgmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lgmx$2;->a:Lgmb;

    iget-object v0, v0, Lgmb;->r:Lgmb$a;

    invoke-interface {v0}, Lgmb$a;->a()V

    .line 48
    return-void
.end method
