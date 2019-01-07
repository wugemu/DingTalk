.class final Lfnw$1$2;
.super Ljava/lang/Object;
.source "ExternalShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnw$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfnw$1;


# direct methods
.method constructor <init>(Lfnw$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfnw$1;

    .prologue
    .line 81
    iput-object p1, p0, Lfnw$1$2;->b:Lfnw$1;

    iput-object p2, p0, Lfnw$1$2;->a:Ljava/util/List;

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
    .line 84
    iget-object v0, p0, Lfnw$1$2;->b:Lfnw$1;

    iget-object v0, v0, Lfnw$1;->d:Lfnw;

    invoke-static {v0}, Lfnw;->a(Lfnw;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lfnw$1$2;->b:Lfnw$1;

    iget-object v1, v1, Lfnw$1;->a:Ljava/lang/Long;

    iget-object v2, p0, Lfnw$1$2;->b:Lfnw$1;

    iget-object v2, v2, Lfnw$1;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lfnw$1$2;->b:Lfnw$1;

    iget-object v0, v0, Lfnw$1;->c:Lfnw$a;

    iget-object v1, p0, Lfnw$1$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lfnw$a;->b(Ljava/util/List;)V

    .line 86
    return-void
.end method
