.class final Lgar$5$1;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgar$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgar$5;


# direct methods
.method constructor <init>(Lgar$5;)V
    .locals 0
    .param p1, "this$0"    # Lgar$5;

    .prologue
    .line 256
    iput-object p1, p0, Lgar$5$1;->a:Lgar$5;

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
    .line 259
    iget-object v0, p0, Lgar$5$1;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lgar$5$1;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 262
    :cond_0
    return-void
.end method
