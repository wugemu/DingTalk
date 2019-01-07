.class final Lfbk$21$1$3;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk$21$1;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfbk$21$1;


# direct methods
.method constructor <init>(Lfbk$21$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lfbk$21$1;

    .prologue
    .line 393
    iput-object p1, p0, Lfbk$21$1$3;->c:Lfbk$21$1;

    iput-object p2, p0, Lfbk$21$1$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lfbk$21$1$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 396
    iget-object v0, p0, Lfbk$21$1$3;->c:Lfbk$21$1;

    iget-object v0, v0, Lfbk$21$1;->f:Lfbk$21;

    iget-object v0, v0, Lfbk$21;->a:Lcma;

    iget-object v1, p0, Lfbk$21$1$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lfbk$21$1$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method
