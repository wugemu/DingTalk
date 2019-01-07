.class final Lioj$2;
.super Ljava/lang/Object;
.source "H5ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lioj;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lioj;


# direct methods
.method constructor <init>(Lioj;)V
    .locals 0
    .param p1, "this$0"    # Lioj;

    .prologue
    .line 53
    iput-object p1, p0, Lioj$2;->a:Lioj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lioj$2;->a:Lioj;

    .line 1017
    iget-object v0, v0, Lioj;->a:Lioi;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lioj$2;->a:Lioj;

    .line 2017
    iget-object v0, v0, Lioj;->a:Lioi;

    .line 57
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lioi;->onImage(Landroid/graphics/Bitmap;)V

    .line 59
    :cond_0
    return-void
.end method
