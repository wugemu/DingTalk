.class final Lfbq$10$1;
.super Ljava/lang/Object;
.source "CertifyTaskImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbq$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbq$10;


# direct methods
.method constructor <init>(Lfbq$10;)V
    .locals 0
    .param p1, "this$1"    # Lfbq$10;

    .prologue
    .line 452
    iput-object p1, p0, Lfbq$10$1;->a:Lfbq$10;

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
    .line 455
    iget-object v0, p0, Lfbq$10$1;->a:Lfbq$10;

    iget-object v0, v0, Lfbq$10;->b:Lfbq;

    iget-object v1, p0, Lfbq$10$1;->a:Lfbq$10;

    iget-object v1, v1, Lfbq$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1}, Lfbq;->b(Lfbq;Lcom/alibaba/wukong/Callback;)V

    .line 456
    return-void
.end method
