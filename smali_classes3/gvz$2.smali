.class final Lgvz$2;
.super Ljava/lang/Object;
.source "ShareInnerDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgvz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lgvz;


# direct methods
.method constructor <init>(Lgvz;Lcma;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lgvz;

    .prologue
    .line 228
    iput-object p1, p0, Lgvz$2;->c:Lgvz;

    iput-object p2, p0, Lgvz$2;->a:Lcma;

    iput-object p3, p0, Lgvz$2;->b:Ljava/lang/Object;

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
    .line 231
    iget-object v0, p0, Lgvz$2;->a:Lcma;

    iget-object v1, p0, Lgvz$2;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 232
    return-void
.end method
