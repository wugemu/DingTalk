.class final Lgqe$1;
.super Ljava/lang/Object;
.source "SpaceFileForwardHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgqe;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcko;

.field final synthetic b:Lcma;

.field final synthetic c:Lgqe;


# direct methods
.method constructor <init>(Lgqe;Lcko;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgqe;

    .prologue
    .line 136
    iput-object p1, p0, Lgqe$1;->c:Lgqe;

    iput-object p2, p0, Lgqe$1;->a:Lcko;

    iput-object p3, p0, Lgqe$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lgqe$1;->a:Lcko;

    const/4 v1, 0x1

    .line 1020
    iput-boolean v1, v0, Lcko;->a:Z

    .line 140
    iget-object v0, p0, Lgqe$1;->b:Lcma;

    iget-object v1, p0, Lgqe$1;->a:Lcko;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 141
    return-void
.end method
