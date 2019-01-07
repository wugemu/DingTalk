.class final Lfvx$2$1$1;
.super Ljava/lang/Object;
.source "OrgEmplyeeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvx$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfvx$2$1;


# direct methods
.method constructor <init>(Lfvx$2$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfvx$2$1;

    .prologue
    .line 72
    iput-object p1, p0, Lfvx$2$1$1;->b:Lfvx$2$1;

    iput-object p2, p0, Lfvx$2$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lfvx$2$1$1;->b:Lfvx$2$1;

    iget-object v0, v0, Lfvx$2$1;->a:Lfvx$2;

    iget-object v0, v0, Lfvx$2;->a:Lcma;

    iget-object v1, p0, Lfvx$2$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
