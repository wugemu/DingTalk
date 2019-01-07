.class public final Layv$9;
.super Ljava/lang/Object;
.source "SingleChatTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Layv;


# direct methods
.method public constructor <init>(Layv;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Layv;

    .prologue
    .line 270
    iput-object p1, p0, Layv$9;->b:Layv;

    iput-object p2, p0, Layv$9;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Layv$9;->b:Layv;

    invoke-static {v0}, Layv;->i(Layv;)Layv$h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Layv$9;->b:Layv;

    invoke-static {v0}, Layv;->i(Layv;)Layv$h;

    move-result-object v0

    iget-object v1, p0, Layv$9;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Layv$h;->a(Ljava/util/List;)V

    .line 276
    :cond_0
    return-void
.end method
