.class final Lgdx$11$1;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/UploadCheckResultDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdx$11;


# direct methods
.method constructor <init>(Lgdx$11;)V
    .locals 0
    .param p1, "this$1"    # Lgdx$11;

    .prologue
    .line 297
    iput-object p1, p0, Lgdx$11$1;->a:Lgdx$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 300
    iget-object v0, p0, Lgdx$11$1;->a:Lgdx$11;

    iget-object v0, v0, Lgdx$11;->b:Lgdx;

    iget-object v1, p0, Lgdx$11$1;->a:Lgdx$11;

    iget-object v1, v1, Lgdx$11;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lgdx;->a(Lgdx;Ljava/util/List;Z)V

    .line 301
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lgdx$11$1;->a:Lgdx$11;

    iget-object v0, v0, Lgdx$11;->b:Lgdx;

    iget-object v1, p0, Lgdx$11$1;->a:Lgdx$11;

    iget-object v1, v1, Lgdx$11;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgdx;->a(Lgdx;Ljava/util/List;Z)V

    .line 306
    return-void
.end method
