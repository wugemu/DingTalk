.class final Lgdx$2;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lged$a;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Lged$a;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 376
    iput-object p1, p0, Lgdx$2;->c:Lgdx;

    iput-object p2, p0, Lgdx$2;->a:Lged$a;

    iput-object p3, p0, Lgdx$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 379
    iget-object v0, p0, Lgdx$2;->a:Lged$a;

    iget-object v1, p0, Lgdx$2;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lged$a;->a(Ljava/util/List;)V

    .line 380
    return-void
.end method
