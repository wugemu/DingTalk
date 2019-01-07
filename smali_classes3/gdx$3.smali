.class final Lgdx$3;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdx;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 406
    iput-object p1, p0, Lgdx$3;->b:Lgdx;

    iput-object p2, p0, Lgdx$3;->a:Lcma;

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
    .line 409
    iget-object v0, p0, Lgdx$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lgdx$3;->a:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 412
    :cond_0
    return-void
.end method
