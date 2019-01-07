.class final Lgdx$7;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 178
    iput-object p1, p0, Lgdx$7;->b:Lgdx;

    iput-object p2, p0, Lgdx$7;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 182
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_doc_upload_no_notice"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lgdx$7;->b:Lgdx;

    iget-object v1, p0, Lgdx$7;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 1055
    invoke-virtual {v0, v1, v2}, Lgdx;->a(Ljava/util/ArrayList;Z)V

    .line 184
    return-void
.end method
