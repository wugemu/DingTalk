.class public final Lcmm;
.super Lcmn;
.source "AutoLoginServiceForMonkey.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcmn;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcmm;->a:Ljava/util/List;

    .line 43
    invoke-direct {p0}, Lcmm;->c()V

    .line 44
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "ttid":Ljava/lang/String;
    const-string/jumbo v1, "autokey007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "autokey010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 121
    const/4 v1, 0x1

    .line 124
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 17

    .prologue
    .line 48
    const/4 v4, 0x0

    .line 49
    .local v4, "accountsStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 51
    .local v9, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string/jumbo v14, "accounts_for_monkey.txt"

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 52
    if-nez v9, :cond_1

    .line 69
    if-eqz v9, :cond_0

    .line 71
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v10

    .line 73
    .local v10, "ioe":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v10    # "ioe":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v11

    .line 57
    .local v11, "len":I
    new-array v5, v11, [B

    .line 58
    .local v5, "buffer":[B
    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    .line 59
    const-string/jumbo v13, "utf-8"

    invoke-static {v5, v13}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 69
    if-eqz v9, :cond_2

    .line 71
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 78
    .end local v5    # "buffer":[B
    .end local v11    # "len":I
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 82
    const-string/jumbo v13, "\\n"

    const-string/jumbo v14, ""

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string/jumbo v13, ";"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "accountsArray":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v13, v3

    if-ge v7, v13, :cond_0

    .line 86
    aget-object v2, v3, v7

    .line 87
    .local v2, "accountStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 91
    const-string/jumbo v13, ":"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "accountArray":[Ljava/lang/String;
    array-length v13, v1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcmm;->a:Ljava/util/List;

    new-instance v14, Landroid/accounts/Account;

    const/4 v15, 0x0

    aget-object v15, v1, v15

    const/16 v16, 0x1

    aget-object v16, v1, v16

    invoke-direct/range {v14 .. v16}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v1    # "accountArray":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 72
    .end local v2    # "accountStr":Ljava/lang/String;
    .end local v3    # "accountsArray":[Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v5    # "buffer":[B
    .restart local v11    # "len":I
    :catch_1
    move-exception v10

    .line 73
    .restart local v10    # "ioe":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v5    # "buffer":[B
    .end local v10    # "ioe":Ljava/io/IOException;
    .end local v11    # "len":I
    :catch_2
    move-exception v6

    .line 61
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    if-eqz v9, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 72
    :catch_3
    move-exception v10

    .line 73
    .restart local v10    # "ioe":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v10    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 63
    .restart local v10    # "ioe":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    if-eqz v9, :cond_2

    .line 71
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 72
    :catch_5
    move-exception v10

    .line 73
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 64
    .end local v10    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 65
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_8
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 69
    if-eqz v9, :cond_2

    .line 71
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_1

    .line 72
    :catch_7
    move-exception v10

    .line 73
    .restart local v10    # "ioe":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 66
    .end local v8    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v10    # "ioe":Ljava/io/IOException;
    :catch_8
    move-exception v12

    .line 67
    .local v12, "re":Ljava/lang/RuntimeException;
    :try_start_a
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 69
    if-eqz v9, :cond_2

    .line 71
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_1

    .line 72
    :catch_9
    move-exception v10

    .line 73
    .restart local v10    # "ioe":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 69
    .end local v10    # "ioe":Ljava/io/IOException;
    .end local v12    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_4

    .line 71
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 74
    :cond_4
    :goto_3
    throw v13

    .line 72
    :catch_a
    move-exception v10

    .line 73
    .restart local v10    # "ioe":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 102
    iget-object v3, p0, Lcmm;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 103
    const/4 v3, 0x0

    .line 114
    :goto_0
    return-object v3

    .line 106
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 107
    .local v2, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .line 109
    .local v1, "index":I
    :try_start_0
    iget-object v3, p0, Lcmm;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_1
    iget-object v3, p0, Lcmm;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method
