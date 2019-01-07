.class final Lzq$1$1$2;
.super Ljava/lang/Object;
.source "VideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzq$1$1;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lzq$1$1;


# direct methods
.method constructor <init>(Lzq$1$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lzq$1$1;

    .prologue
    .line 113
    iput-object p1, p0, Lzq$1$1$2;->c:Lzq$1$1;

    iput-object p2, p0, Lzq$1$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lzq$1$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lzq$1$1$2;->c:Lzq$1$1;

    iget-object v0, v0, Lzq$1$1;->a:Lzq$1;

    iget-object v0, v0, Lzq$1;->a:Lzq;

    .line 1022
    iget-object v0, v0, Lzq;->f:Lcma;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lzq$1$1$2;->c:Lzq$1$1;

    iget-object v0, v0, Lzq$1$1;->a:Lzq$1;

    iget-object v0, v0, Lzq$1;->a:Lzq;

    .line 2022
    iget-object v0, v0, Lzq;->f:Lcma;

    .line 116
    iget-object v1, p0, Lzq$1$1$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lzq$1$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method
