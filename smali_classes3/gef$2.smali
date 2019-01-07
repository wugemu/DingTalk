.class final Lgef$2;
.super Ljava/lang/Object;
.source "DentryListViewUploadUseCase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lgef;


# direct methods
.method constructor <init>(Lgef;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgef;

    .prologue
    .line 220
    iput-object p1, p0, Lgef$2;->b:Lgef;

    iput-object p2, p0, Lgef$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 223
    new-instance v0, Lgpa;

    invoke-direct {v0}, Lgpa;-><init>()V

    .line 224
    .local v0, "param":Lgpa;
    iget-object v1, p0, Lgef$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lgpa;->a:Ljava/lang/Object;

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgpa;->c:Z

    .line 226
    const/4 v1, 0x1

    iput v1, v0, Lgpa;->g:I

    .line 227
    iget-object v1, p0, Lgef$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1}, Lgpr;->i(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v1

    iput v1, v0, Lgpa;->f:I

    .line 228
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v1

    iget-object v2, p0, Lgef$2;->b:Lgef;

    .line 1035
    invoke-virtual {v2}, Lgef;->a()Lgpe$b;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v0, v2}, Lgpe;->a(Lgpa;Lgpe$b;)V

    .line 229
    return-void
.end method
