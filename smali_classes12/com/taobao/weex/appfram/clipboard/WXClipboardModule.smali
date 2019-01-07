.class public Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXClipboardModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/clipboard/IWXClipboard;


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final RESULT_FAILED:Ljava/lang/String; = "failed"

.field private static final RESULT_OK:Ljava/lang/String; = "success"


# instance fields
.field private final CLIP_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 44
    const-string/jumbo v0, "WEEX_CLIP_KEY_MAIN"

    iput-object v0, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->CLIP_KEY:Ljava/lang/String;

    return-void
.end method

.method private coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Landroid/content/ClipData$Item;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 93
    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v9, :cond_1

    .line 146
    .end local v9    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v9

    .line 98
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 99
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_8

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "reader":Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 103
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "text/*"

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 104
    .local v0, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    .line 105
    new-instance v7, Ljava/io/InputStreamReader;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v7, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .local v7, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v11, 0x2000

    new-array v1, v11, [C

    .line 110
    .local v1, "buffer":[C
    :goto_1
    invoke-virtual {v7, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_4

    .line 111
    const/4 v11, 0x0

    invoke-virtual {v2, v1, v11, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 120
    .end local v1    # "buffer":[C
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "len":I
    :catch_0
    move-exception v11

    move-object v6, v7

    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :goto_2
    if-eqz v6, :cond_2

    .line 122
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 127
    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    .line 129
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 136
    :cond_3
    :goto_4
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 113
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "buffer":[C
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "len":I
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v9

    .line 122
    .end local v9    # "text":Ljava/lang/CharSequence;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 127
    :goto_5
    if-eqz v8, :cond_0

    .line 129
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v11

    goto :goto_0

    .line 117
    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "buffer":[C
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :catch_2
    move-exception v3

    .line 118
    .local v3, "e":Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string/jumbo v11, "ClippedData Failure loading text."

    invoke-static {v11, v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 120
    if-eqz v6, :cond_5

    .line 122
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 127
    :cond_5
    :goto_7
    if-eqz v8, :cond_3

    .line 129
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 132
    :catch_3
    move-exception v11

    goto :goto_4

    .line 120
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_8
    if-eqz v6, :cond_6

    .line 122
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 127
    :cond_6
    :goto_9
    if-eqz v8, :cond_7

    .line 129
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 132
    :cond_7
    :goto_a
    throw v11

    .line 140
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 141
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_9

    .line 142
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 146
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "text":Ljava/lang/CharSequence;
    .restart local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v1    # "buffer":[C
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "len":I
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v11

    goto :goto_5

    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "buffer":[C
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v9    # "text":Ljava/lang/CharSequence;
    :catch_5
    move-exception v11

    goto :goto_3

    .line 132
    :catch_6
    move-exception v11

    goto :goto_4

    .restart local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v11

    goto :goto_7

    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v12

    goto :goto_9

    :catch_9
    move-exception v12

    goto :goto_a

    .line 120
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_8

    .line 117
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 120
    .end local v0    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_b
    move-exception v11

    goto :goto_2
.end method


# virtual methods
.method public getString(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-object v6, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v6, "clipboard"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 71
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    new-instance v4, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 72
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 73
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 74
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 75
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-direct {p0, v2, v3}, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 77
    .local v5, "text":Ljava/lang/CharSequence;
    const-string/jumbo v7, "result"

    if-eqz v5, :cond_1

    const-string/jumbo v6, "success"

    :goto_0
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v6, "data"

    if-eqz v5, :cond_2

    .end local v5    # "text":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v3    # "item":Landroid/content/ClipData$Item;
    :goto_2
    if-eqz p1, :cond_0

    .line 85
    invoke-interface {p1, v4}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void

    .line 77
    .restart local v3    # "item":Landroid/content/ClipData$Item;
    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v6, "failed"

    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v5, ""

    goto :goto_1

    .line 80
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_3
    const-string/jumbo v6, "result"

    const-string/jumbo v7, "failed"

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v6, "data"

    const-string/jumbo v7, ""

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public setString(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 60
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 61
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v3, "WEEX_CLIP_KEY_MAIN"

    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 62
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method
