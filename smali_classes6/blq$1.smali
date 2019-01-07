.class final Lblq$1;
.super Ljava/lang/Object;
.source "AlphaHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmi;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lblq;


# direct methods
.method constructor <init>(Lblq;Lbmi;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lblq;

    .prologue
    .line 174
    iput-object p1, p0, Lblq$1;->c:Lblq;

    iput-object p2, p0, Lblq$1;->a:Lbmi;

    iput-object p3, p0, Lblq$1;->b:Ljava/lang/Object;

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
    .line 177
    iget-object v0, p0, Lblq$1;->a:Lbmi;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lblq$1;->a:Lbmi;

    iget-object v1, p0, Lblq$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lbmi;->a(Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void
.end method
