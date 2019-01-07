.class public final Larl$16;
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

.field final synthetic b:Larl;


# direct methods
.method public constructor <init>(Larl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 251
    iput-object p1, p0, Larl$16;->b:Larl;

    iput-object p2, p0, Larl$16;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Larl$16;->b:Larl;

    invoke-static {v0}, Larl;->c(Larl;)Laud;

    move-result-object v0

    iget-object v1, p0, Larl$16;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Laud;->a(Ljava/lang/String;)V

    .line 255
    return-void
.end method
