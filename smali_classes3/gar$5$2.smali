.class final Lgar$5$2;
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
    .line 269
    iput-object p1, p0, Lgar$5$2;->a:Lgar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 272
    iget-object v0, p0, Lgar$5$2;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    const-string/jumbo v1, "2021"

    const-string/jumbo v2, "network error"

    invoke-virtual {v0, v1, v2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
