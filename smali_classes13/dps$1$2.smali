.class final Ldps$1$2;
.super Ljava/lang/Object;
.source "CustomEmotionMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldps$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldps$1;


# direct methods
.method constructor <init>(Ldps$1;)V
    .locals 0
    .param p1, "this$1"    # Ldps$1;

    .prologue
    .line 193
    iput-object p1, p0, Ldps$1$2;->a:Ldps$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Ldps$1$2;->a:Ldps$1;

    iget-object v0, v0, Ldps$1;->b:Lcma;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Ldps$1$2;->a:Ldps$1;

    iget-object v0, v0, Ldps$1;->b:Lcma;

    const/4 v1, 0x0

    const-string/jumbo v2, "DB insert failed"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method