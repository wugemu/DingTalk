.class final Lgoz$2;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lgoz;


# direct methods
.method constructor <init>(Lgoz;Lgpd;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgoz;

    .prologue
    .line 297
    iput-object p1, p0, Lgoz$2;->f:Lgoz;

    iput-object p2, p0, Lgoz$2;->a:Lgpd;

    iput-object p3, p0, Lgoz$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lgoz$2;->c:Ljava/lang/Object;

    iput-object p5, p0, Lgoz$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lgoz$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 300
    iget-object v0, p0, Lgoz$2;->a:Lgpd;

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lgoz$2;->a:Lgpd;

    iget-object v1, p0, Lgoz$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lgoz$2;->c:Ljava/lang/Object;

    iget-object v3, p0, Lgoz$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lgoz$2;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lgpd;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
