.class final Lgfh$2;
.super Ljava/lang/Object;
.source "GroupFilePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lgfh;


# direct methods
.method constructor <init>(Lgfh;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgfh;

    .prologue
    .line 192
    iput-object p1, p0, Lgfh$2;->b:Lgfh;

    iput-object p2, p0, Lgfh$2;->a:Ljava/util/List;

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
    .line 195
    invoke-static {}, Lglr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lgfh$2;->b:Lgfh;

    iget-object v1, p0, Lgfh$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lgfh;->a(Lgfh;Ljava/util/List;)V

    .line 199
    :cond_0
    return-void
.end method
