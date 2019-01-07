.class final Leyp$1;
.super Ljava/lang/Object;
.source "ApplicationStateUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyp;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leyp;


# direct methods
.method constructor <init>(Leyp;)V
    .locals 0
    .param p1, "this$0"    # Leyp;

    .prologue
    .line 107
    iput-object p1, p0, Leyp$1;->a:Leyp;

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
    .line 110
    iget-object v0, p0, Leyp$1;->a:Leyp;

    invoke-static {v0}, Leyp;->a(Leyp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leyp$1;->a:Leyp;

    invoke-static {v0}, Leyp;->b(Leyp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Leyp$1;->a:Leyp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leyp;->a(Leyp;Z)Z

    .line 112
    sget-object v0, Leyp;->a:Ljava/lang/String;

    const-string/jumbo v1, "went background"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Leyp$1;->a:Leyp;

    invoke-static {v0}, Leyp;->c(Leyp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Leyp;->a:Ljava/lang/String;

    const-string/jumbo v1, "still mBeForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    return-void
.end method
