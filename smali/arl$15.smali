.class public final Larl$15;
.super Ljava/lang/Object;
.source "FolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Larl;


# direct methods
.method public constructor <init>(Larl;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 234
    iput-object p1, p0, Larl$15;->c:Larl;

    iput-object p2, p0, Larl$15;->a:Ljava/lang/String;

    iput-boolean p3, p0, Larl$15;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Larl$15;->c:Larl;

    invoke-static {v0}, Larl;->a(Larl;)V

    .line 238
    iget-object v0, p0, Larl$15;->c:Larl;

    invoke-static {v0}, Larl;->b(Larl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Larl$15;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Larl$15;->c:Larl;

    invoke-static {v0}, Larl;->b(Larl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Larl$15;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    iget-boolean v1, p0, Larl$15;->b:Z

    .line 1110
    iput-boolean v1, v0, Lasl;->i:Z

    .line 241
    :cond_0
    iget-object v0, p0, Larl$15;->c:Larl;

    invoke-static {v0}, Larl;->c(Larl;)Laud;

    move-result-object v0

    new-instance v1, Lasm;

    iget-object v2, p0, Larl$15;->a:Ljava/lang/String;

    iget-boolean v3, p0, Larl$15;->b:Z

    invoke-direct {v1, v2, v3}, Lasm;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Laud;->a(Lasm;)I

    .line 242
    return-void
.end method
