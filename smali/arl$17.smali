.class public final Larl$17;
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
.field final synthetic a:J

.field final synthetic b:Z

.field final synthetic c:Larl;


# direct methods
.method public constructor <init>(Larl;JZ)V
    .locals 0
    .param p1, "this$0"    # Larl;

    .prologue
    .line 263
    iput-object p1, p0, Larl$17;->c:Larl;

    iput-wide p2, p0, Larl$17;->a:J

    iput-boolean p4, p0, Larl$17;->b:Z

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
    .line 266
    iget-object v0, p0, Larl$17;->c:Larl;

    invoke-static {v0}, Larl;->d(Larl;)Latz;

    move-result-object v0

    iget-wide v2, p0, Larl$17;->a:J

    iget-boolean v1, p0, Larl$17;->b:Z

    invoke-interface {v0, v2, v3, v1}, Latz;->a(JZ)I

    .line 267
    return-void
.end method
