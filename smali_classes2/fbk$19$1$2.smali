.class final Lfbk$19$1$2;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk$19$1;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfbk$19$1;


# direct methods
.method constructor <init>(Lfbk$19$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lfbk$19$1;

    .prologue
    .line 236
    iput-object p1, p0, Lfbk$19$1$2;->b:Lfbk$19$1;

    iput-object p2, p0, Lfbk$19$1$2;->a:Ljava/util/List;

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
    .line 239
    iget-object v0, p0, Lfbk$19$1$2;->b:Lfbk$19$1;

    iget-object v0, v0, Lfbk$19$1;->f:Lfbk$19;

    iget-object v0, v0, Lfbk$19;->a:Lcma;

    iget-object v1, p0, Lfbk$19$1$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 240
    return-void
.end method
