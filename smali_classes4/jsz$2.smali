.class final Ljsz$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ljsz$2;->a:Ljava/lang/String;

    iput-object p2, p0, Ljsz$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0x8c

    .line 83
    iget-object v0, p0, Ljsz$2;->a:Ljava/lang/String;

    invoke-static {v0, v5}, Ljsz;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Ljsz$2;->a:Ljava/lang/String;

    invoke-static {v2}, Ljtx;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "share2qq_temp"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Ljsz$2;->a:Ljava/lang/String;

    .line 1031
    invoke-static {v3, v5, v5}, Ljsz;->a(Ljava/lang/String;II)Z

    move-result v3

    .line 90
    if-nez v3, :cond_0

    .line 91
    const-string/jumbo v0, "AsynScaleCompressImage"

    const-string/jumbo v1, "not out of bound,not compress!"

    invoke-static {v0, v1}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Ljsz$2;->a:Ljava/lang/String;

    .line 97
    :goto_0
    const-string/jumbo v1, "AsynScaleCompressImage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-->destFilePath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Ljsz$2;->b:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 101
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Ljsz$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    :goto_1
    return-void

    .line 94
    :cond_0
    const-string/jumbo v3, "AsynScaleCompressImage"

    const-string/jumbo v4, "out of bound,compress!"

    invoke-static {v3, v4}, Ljtg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v0, v1, v2}, Ljsz;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Ljsz$2;->b:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 107
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v1, p0, Ljsz$2;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
