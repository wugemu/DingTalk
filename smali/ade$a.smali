.class final Lade$a;
.super Ljava/lang/Object;
.source "AvatarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lade;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lade$b;


# direct methods
.method public constructor <init>(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V
    .locals 0
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "targetEmail"    # Ljava/lang/String;
    .param p4, "avatarDpSize"    # I
    .param p5, "listener"    # Lade$b;

    .prologue
    .line 294
    iput-object p1, p0, Lade$a;->a:Lade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lade$a;->b:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lade$a;->c:Ljava/lang/String;

    .line 297
    iput p4, p0, Lade$a;->d:I

    .line 298
    iput-object p5, p0, Lade$a;->e:Lade$b;

    .line 299
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 304
    iget-object v5, p0, Lade$a;->a:Lade;

    iget v6, p0, Lade$a;->d:I

    iget-object v7, p0, Lade$a;->c:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lade;->a(Lade;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lade$a;->a:Lade;

    invoke-static {v5}, Lade;->a(Lade;)Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;->a(Ljava/lang/String;)Z

    move-result v2

    .line 306
    .local v2, "fileExisit":Z
    if-eqz v2, :cond_1

    .line 308
    iget-object v5, p0, Lade$a;->a:Lade;

    invoke-static {v5}, Lade;->a(Lade;)Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;

    move-result-object v5

    .line 1042
    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/avatar/AvatarFileCache;->a:Ljava/lang/String;

    invoke-direct {v6, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1043
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 310
    iget-object v5, p0, Lade$a;->a:Lade;

    invoke-static {v5}, Lade;->b(Lade;)Ladf;

    move-result-object v5

    iget v6, p0, Lade$a;->d:I

    invoke-virtual {v5, v6, v3, v0}, Ladf;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 311
    iget-object v5, p0, Lade$a;->a:Lade;

    iget-object v6, p0, Lade$a;->e:Lade$b;

    iget-object v7, p0, Lade$a;->c:Ljava/lang/String;

    invoke-static {v5, v6, v0, v7}, Lade;->a(Lade;Lade$b;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 338
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const/4 v1, 0x0

    .line 317
    .local v1, "canRequest":Z
    iget-object v5, p0, Lade$a;->a:Lade;

    invoke-static {v5}, Lade;->e(Lade;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 318
    :try_start_0
    iget-object v5, p0, Lade$a;->a:Lade;

    invoke-static {v5}, Lade;->e(Lade;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 319
    .local v4, "listenerList":Ljava/util/List;, "Ljava/util/List<Lade$b;>;"
    if-nez v4, :cond_2

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lade$b;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .restart local v4    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lade$b;>;"
    iget-object v5, p0, Lade$a;->e:Lade$b;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v5, p0, Lade$a;->a:Lade;

    invoke-static {v5}, Lade;->e(Lade;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const/4 v1, 0x1

    .line 330
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    if-nez v1, :cond_4

    .line 332
    const-string/jumbo v5, "AvatarManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can not request targetEmail = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lade$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for it is requesting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    const/4 v1, 0x1

    .line 328
    :cond_3
    iget-object v5, p0, Lade$a;->e:Lade$b;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 330
    .end local v4    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lade$b;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 337
    .restart local v4    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lade$b;>;"
    :cond_4
    iget-object v5, p0, Lade$a;->a:Lade;

    iget-object v6, p0, Lade$a;->b:Ljava/lang/String;

    iget-object v7, p0, Lade$a;->c:Ljava/lang/String;

    iget v8, p0, Lade$a;->d:I

    iget-object v9, p0, Lade$a;->e:Lade$b;

    invoke-static {v5, v6, v7, v8, v9}, Lade;->a(Lade;Ljava/lang/String;Ljava/lang/String;ILade$b;)V

    goto :goto_0
.end method
