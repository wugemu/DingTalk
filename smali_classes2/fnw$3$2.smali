.class final Lfnw$3$2;
.super Ljava/lang/Object;
.source "ExternalShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnw$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfnw$3;


# direct methods
.method constructor <init>(Lfnw$3;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfnw$3;

    .prologue
    .line 132
    iput-object p1, p0, Lfnw$3$2;->b:Lfnw$3;

    iput-object p2, p0, Lfnw$3$2;->a:Ljava/util/List;

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
    .line 135
    iget-object v0, p0, Lfnw$3$2;->b:Lfnw$3;

    iget-object v0, v0, Lfnw$3;->c:Lfnw;

    invoke-static {v0}, Lfnw;->b(Lfnw;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lfnw$3$2;->b:Lfnw$3;

    iget-object v1, v1, Lfnw$3;->a:Ljava/lang/Long;

    iget-object v2, p0, Lfnw$3$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lfnw$3$2;->b:Lfnw$3;

    iget-object v0, v0, Lfnw$3;->b:Lfnw$a;

    iget-object v1, p0, Lfnw$3$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lfnw$a;->a(Ljava/util/List;)V

    .line 137
    return-void
.end method
