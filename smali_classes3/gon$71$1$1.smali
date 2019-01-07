.class final Lgon$71$1$1;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon$71$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lgon$71$1;


# direct methods
.method constructor <init>(Lgon$71$1;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$2"    # Lgon$71$1;

    .prologue
    .line 3663
    iput-object p1, p0, Lgon$71$1$1;->b:Lgon$71$1;

    iput-object p2, p0, Lgon$71$1$1;->a:Ljava/util/Map;

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
    .line 3666
    iget-object v0, p0, Lgon$71$1$1;->b:Lgon$71$1;

    iget-object v0, v0, Lgon$71$1;->b:Lgon$71;

    iget-object v0, v0, Lgon$71;->a:Lcma;

    iget-object v1, p0, Lgon$71$1$1;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3667
    return-void
.end method
