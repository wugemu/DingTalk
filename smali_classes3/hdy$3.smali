.class final Lhdy$3;
.super Landroid/content/BroadcastReceiver;
.source "FileChooserDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdy;


# direct methods
.method constructor <init>(Lhdy;)V
    .locals 0
    .param p1, "this$0"    # Lhdy;

    .prologue
    .line 246
    iput-object p1, p0, Lhdy$3;->a:Lhdy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "lightapp.runtime.webview.action.CHOOSE_PHOTO"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 252
    const-string/jumbo v7, "choose_picture_ids"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 253
    .local v6, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 254
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [Landroid/net/Uri;

    .line 255
    .local v5, "uriArray":[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 257
    :try_start_0
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->a(Lhdy;)Landroid/app/Activity;

    move-result-object v8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lhdy;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 258
    .local v4, "result":Landroid/net/Uri;
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v4, v7, :cond_0

    .line 259
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "file://"

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 261
    :cond_0
    if-nez v4, :cond_1

    .line 262
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 264
    :cond_1
    aput-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v4    # "result":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    aput-object v7, v5, v3

    goto :goto_1

    .line 271
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->c(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 272
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->c(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 309
    .end local v3    # "index":I
    .end local v5    # "uriArray":[Landroid/net/Uri;
    .end local v6    # "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7, v10}, Lhdy;->a(Lhdy;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 310
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7, v10}, Lhdy;->b(Lhdy;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 311
    return-void

    .line 273
    .restart local v3    # "index":I
    .restart local v5    # "uriArray":[Landroid/net/Uri;
    .restart local v6    # "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->d(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 274
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->d(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-interface {v7, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 277
    .end local v3    # "index":I
    .end local v5    # "uriArray":[Landroid/net/Uri;
    .end local v6    # "uris":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v7, "lightapp.runtime.webview.action.CHOOSE_FILE"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "choose_files_uris"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 279
    .local v2, "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 280
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [Landroid/net/Uri;

    .line 281
    .restart local v5    # "uriArray":[Landroid/net/Uri;
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 282
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 284
    .restart local v4    # "result":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 288
    :cond_6
    if-nez v4, :cond_7

    .line 289
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 291
    :cond_7
    aput-object v4, v5, v3

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 293
    .end local v4    # "result":Landroid/net/Uri;
    :cond_8
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->c(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 294
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->c(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 295
    :cond_9
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->d(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 296
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->d(Lhdy;)Landroid/webkit/ValueCallback;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-interface {v7, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 300
    .end local v2    # "fileUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "index":I
    .end local v5    # "uriArray":[Landroid/net/Uri;
    :cond_a
    const-string/jumbo v7, "com.workapp.choose.picture.from.album.cancel"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "com.workapp.choose.file.from.picker.cancel"

    .line 301
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 303
    :cond_b
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->e(Lhdy;)V

    goto/16 :goto_2

    .line 306
    :cond_c
    iget-object v7, p0, Lhdy$3;->a:Lhdy;

    invoke-static {v7}, Lhdy;->e(Lhdy;)V

    goto/16 :goto_2
.end method
