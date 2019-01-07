.class final Liey$2;
.super Ljava/lang/Object;
.source "AVDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liey;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method constructor <init>(Liey;)V
    .locals 0
    .param p1, "this$0"    # Liey;

    .prologue
    .line 302
    iput-object p1, p0, Liey$2;->a:Liey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Liey$2;->a:Liey;

    invoke-static {v0}, Liey;->b(Liey;)V

    .line 308
    iget-object v0, p0, Liey$2;->a:Liey;

    invoke-static {v0}, Liey;->a(Liey;)Liej;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Liey$2;->a:Liey;

    invoke-static {v0}, Liey;->a(Liey;)Liej;

    move-result-object v0

    invoke-virtual {v0}, Liej;->a()V

    .line 311
    :cond_0
    iget-object v0, p0, Liey$2;->a:Liey;

    invoke-static {v0}, Liey;->c(Liey;)Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Liey$2;->a:Liey;

    invoke-static {v0}, Liey;->c(Liey;)Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(I)V

    .line 314
    :cond_1
    return-void
.end method
