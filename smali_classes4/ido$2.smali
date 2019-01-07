.class final Lido$2;
.super Ljava/lang/Object;
.source "SyncLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lido;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lido;


# direct methods
.method constructor <init>(Lido;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lido;

    .prologue
    .line 135
    iput-object p1, p0, Lido$2;->b:Lido;

    iput-object p2, p0, Lido$2;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 138
    iget-object v0, p0, Lido$2;->b:Lido;

    iget-object v1, p0, Lido$2;->a:Ljava/io/File;

    .line 1155
    new-instance v2, Lido$3;

    invoke-direct {v2, v0, v1}, Lido$3;-><init>(Lido;Ljava/io/File;)V

    .line 1187
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lify;->a(Ljava/io/File;Lifw;)V

    .line 139
    return-void
.end method
