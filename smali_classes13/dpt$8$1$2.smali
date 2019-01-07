.class final Ldpt$8$1$2;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldpt$8$1;


# direct methods
.method constructor <init>(Ldpt$8$1;)V
    .locals 0
    .param p1, "this$2"    # Ldpt$8$1;

    .prologue
    .line 314
    iput-object p1, p0, Ldpt$8$1$2;->a:Ldpt$8$1;

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
    .line 317
    iget-object v0, p0, Ldpt$8$1$2;->a:Ldpt$8$1;

    iget-object v0, v0, Ldpt$8$1;->b:Ldpt$8;

    iget-object v0, v0, Ldpt$8;->b:Lcma;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Ldpt$8$1$2;->a:Ldpt$8$1;

    iget-object v0, v0, Ldpt$8$1;->b:Ldpt$8;

    iget-object v0, v0, Ldpt$8;->b:Lcma;

    const/4 v1, 0x0

    const-string/jumbo v2, "DB insert failed"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    return-void
.end method
