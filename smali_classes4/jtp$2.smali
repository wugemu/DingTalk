.class final Ljtp$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljtp;


# direct methods
.method constructor <init>(Ljtp;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Ljtp$2;->a:Ljtp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 151
    const-string/jumbo v0, "AsynLoadImg"

    const-string/jumbo v2, "saveFileRunnable:"

    invoke-static {v0, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Ljtp$2;->a:Ljtp;

    .line 1027
    iget-object v0, v0, Ljtp;->a:Ljava/lang/String;

    .line 152
    invoke-static {v0}, Ljtx;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "share_qq_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2027
    sget-object v3, Ljtp;->c:Ljava/lang/String;

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Ljtp$2;->a:Ljtp;

    .line 3027
    iget-object v4, v4, Ljtp;->e:Landroid/os/Handler;

    .line 158
    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 161
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    const-string/jumbo v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file exists: time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Ljtp$2;->a:Ljtp;

    .line 4027
    iget-wide v6, v5, Ljtp;->d:J

    .line 162
    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    iget-object v0, p0, Ljtp$2;->a:Ljtp;

    .line 7027
    iget-object v0, v0, Ljtp;->e:Landroid/os/Handler;

    .line 190
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void

    .line 165
    :cond_0
    iget-object v3, p0, Ljtp$2;->a:Ljtp;

    .line 5027
    iget-object v3, v3, Ljtp;->a:Ljava/lang/String;

    .line 165
    invoke-static {v3}, Ljtp;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_1

    .line 167
    invoke-static {v3, v0}, Ljtp;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 171
    :goto_1
    if-eqz v0, :cond_2

    .line 172
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 173
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    :goto_2
    const-string/jumbo v0, "AsynLoadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file not exists: download time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Ljtp$2;->a:Ljtp;

    .line 6027
    iget-wide v6, v5, Ljtp;->d:J

    .line 177
    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v0, "AsynLoadImg"

    const-string/jumbo v3, "saveFileRunnable:get bmp fail---"

    invoke-static {v0, v3}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    .line 175
    :cond_2
    const/4 v0, 0x1

    iput v0, v4, Landroid/os/Message;->arg1:I

    goto :goto_2
.end method
