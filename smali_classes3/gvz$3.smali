.class final Lgvz$3;
.super Ljava/lang/Object;
.source "ShareInnerDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgvz;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lgvz;


# direct methods
.method constructor <init>(Lgvz;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgvz;

    .prologue
    .line 239
    iput-object p1, p0, Lgvz$3;->d:Lgvz;

    iput-object p2, p0, Lgvz$3;->a:Lcma;

    iput-object p3, p0, Lgvz$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lgvz$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 242
    iget-object v0, p0, Lgvz$3;->a:Lcma;

    iget-object v1, p0, Lgvz$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lgvz$3;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method
