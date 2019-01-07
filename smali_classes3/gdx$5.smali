.class final Lgdx$5;
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

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 144
    iput-object p1, p0, Lgdx$5;->d:Lgdx;

    iput-object p2, p0, Lgdx$5;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lgdx$5;->b:Z

    iput-object p4, p0, Lgdx$5;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 148
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_doc_upload_no_notice"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lgdx$5;->d:Lgdx;

    iget-object v1, p0, Lgdx$5;->a:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lgdx$5;->b:Z

    iget-object v3, p0, Lgdx$5;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lgdx;->a(Lgdx;Ljava/util/ArrayList;ZLjava/util/List;Z)V

    .line 150
    return-void
.end method
