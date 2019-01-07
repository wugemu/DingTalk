.class final Lioj$1;
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
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lioj;


# direct methods
.method constructor <init>(Lioj;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lioj;

    .prologue
    .line 44
    iput-object p1, p0, Lioj$1;->b:Lioj;

    iput-object p2, p0, Lioj$1;->a:Landroid/graphics/Bitmap;

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
    .line 47
    const-string/jumbo v0, "H5ImageLoader"

    const-string/jumbo v1, "listener.onImage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lioj$1;->b:Lioj;

    .line 1017
    iget-object v0, v0, Lioj;->a:Lioi;

    .line 48
    iget-object v1, p0, Lioj$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lioi;->onImage(Landroid/graphics/Bitmap;)V

    .line 49
    return-void
.end method
