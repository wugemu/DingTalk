.class final Lpl/droidsonroids/gif/GifTextureView$b;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Llgc;

.field b:[J

.field private c:Lpl/droidsonroids/gif/GifInfoHandle;

.field private d:Ljava/io/IOException;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lpl/droidsonroids/gif/GifTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 1
    .param p1, "gifTextureView"    # Lpl/droidsonroids/gif/GifTextureView;

    .prologue
    .line 170
    const-string/jumbo v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v0, Llgc;

    invoke-direct {v0}, Llgc;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Llgc;

    .line 164
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    .line 172
    return-void
.end method

.method static synthetic a(Lpl/droidsonroids/gif/GifTextureView$b;)Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 1
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView$b;

    .prologue
    .line 161
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic b(Lpl/droidsonroids/gif/GifTextureView$b;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lpl/droidsonroids/gif/GifTextureView$b;

    .prologue
    .line 161
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->d:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method final a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V
    .locals 2
    .param p1, "gifTextureView"    # Lpl/droidsonroids/gif/GifTextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "drawer"    # Lpl/droidsonroids/gif/GifTextureView$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 259
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Llgc;

    invoke-virtual {v1}, Llgc;->b()V

    .line 260
    if-eqz p2, :cond_0

    new-instance v0, Llgl;

    invoke-direct {v0, p2}, Llgl;-><init>(Lpl/droidsonroids/gif/GifTextureView$a;)V

    .line 261
    .local v0, "listener":Landroid/view/TextureView$SurfaceTextureListener;
    :goto_0
    invoke-static {p1, v0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 262
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->n()V

    .line 263
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$b;->interrupt()V

    .line 264
    return-void

    .line 260
    .end local v0    # "listener":Landroid/view/TextureView$SurfaceTextureListener;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 234
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifTextureView;

    .line 235
    .local v0, "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 237
    :cond_0
    iget-object v1, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Llgc;

    invoke-virtual {v1}, Llgc;->a()V

    .line 238
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 247
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Llgc;

    invoke-virtual {v0}, Llgc;->b()V

    .line 248
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->n()V

    .line 249
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$b;->interrupt()V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 243
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 256
    return-void
.end method

.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    :try_start_0
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/droidsonroids/gif/GifTextureView;

    .line 178
    .local v1, "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-nez v1, :cond_0

    .line 230
    .end local v1    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :goto_0
    return-void

    .line 181
    .restart local v1    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :cond_0
    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;)Llgi;

    move-result-object v5

    invoke-virtual {v5}, Llgi;->a()Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v5

    iput-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 182
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifTextureView;->isOpaque()Z

    move-result v6

    .line 1287
    iget-wide v8, v5, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    const/4 v5, 0x1

    invoke-static {v8, v9, v5, v6}, Lpl/droidsonroids/gif/GifInfoHandle;->setOptions(JCZ)V

    .line 183
    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->b(Lpl/droidsonroids/gif/GifTextureView;)Llgh$b;

    move-result-object v5

    iget v5, v5, Llgh$b;->d:I

    if-ltz v5, :cond_1

    .line 184
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->b(Lpl/droidsonroids/gif/GifTextureView;)Llgh$b;

    move-result-object v6

    iget v6, v6, Llgh$b;->d:I

    invoke-virtual {v5, v6}, Lpl/droidsonroids/gif/GifInfoHandle;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    check-cast v1, Lpl/droidsonroids/gif/GifTextureView;

    .line 192
    .restart local v1    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    if-nez v1, :cond_2

    .line 193
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v5}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    goto :goto_0

    .line 186
    .end local v1    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/io/IOException;
    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView$b;->d:Ljava/io/IOException;

    goto :goto_0

    .line 197
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "gifTextureView":Lpl/droidsonroids/gif/GifTextureView;
    :cond_2
    invoke-static {v1, p0}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 198
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifTextureView;->isAvailable()Z

    move-result v2

    .line 199
    .local v2, "isSurfaceAvailable":Z
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Llgc;

    invoke-virtual {v5, v2}, Llgc;->a(Z)V

    .line 200
    if-eqz v2, :cond_3

    .line 201
    new-instance v5, Lpl/droidsonroids/gif/GifTextureView$b$1;

    invoke-direct {v5, p0, v1}, Lpl/droidsonroids/gif/GifTextureView$b$1;-><init>(Lpl/droidsonroids/gif/GifTextureView$b;Lpl/droidsonroids/gif/GifTextureView;)V

    invoke-virtual {v1, v5}, Lpl/droidsonroids/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_3
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-static {v1}, Lpl/droidsonroids/gif/GifTextureView;->c(Lpl/droidsonroids/gif/GifTextureView;)F

    move-result v6

    invoke-virtual {v5, v6}, Lpl/droidsonroids/gif/GifInfoHandle;->a(F)V

    .line 210
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifTextureView$b;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 212
    :try_start_1
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->a:Llgc;

    invoke-virtual {v5}, Llgc;->c()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    .line 218
    .local v4, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v4, :cond_4

    .line 221
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 223
    .local v3, "surface":Landroid/view/Surface;
    :try_start_2
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v6, p0, Lpl/droidsonroids/gif/GifTextureView$b;->b:[J

    .line 2162
    iget-wide v8, v5, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v8, v9, v3, v6}, Lpl/droidsonroids/gif/GifInfoHandle;->bindSurface(JLandroid/view/Surface;[J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    goto :goto_1

    .line 214
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catch_1
    move-exception v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 228
    :cond_5
    iget-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v5}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    .line 229
    new-instance v5, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v5}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>()V

    iput-object v5, p0, Lpl/droidsonroids/gif/GifTextureView$b;->c:Lpl/droidsonroids/gif/GifInfoHandle;

    goto/16 :goto_0

    .line 225
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    throw v5
.end method
