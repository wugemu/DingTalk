.class public final Lvd;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lvp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvd$a;
    }
.end annotation


# static fields
.field public static a:Ljava/io/File;


# instance fields
.field public b:Ljava/io/File;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lvd;->c:Ljava/lang/String;

    .line 43
    sget-object v0, Lvd;->a:Ljava/io/File;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setTempDirectory has not been called on BinaryTempFileBody!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 72
    invoke-virtual {p0}, Lvd;->f_()Ljava/io/InputStream;

    move-result-object v1

    .line 73
    .local v1, "in":Ljava/io/InputStream;
    new-instance v0, Lvw;

    invoke-direct {v0, p1}, Lvw;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v0, "base64Out":Lvw;
    invoke-static {v1, v0}, Lkpv;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 75
    invoke-virtual {v0}, Lvw;->close()V

    .line 76
    iget-object v2, p0, Lvd;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 77
    return-void
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 8
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 89
    iget-object v5, p0, Lvd;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lvd;->c:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string/jumbo v5, "8bit"

    iget-object v6, p0, Lvd;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Can\'t convert from encoding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lvd;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    :cond_1
    :try_start_0
    const-string/jumbo v5, "body"

    const/4 v6, 0x0

    sget-object v7, Lvd;->a:Ljava/io/File;

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 100
    .local v2, "newFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string/jumbo v5, "quoted-printable"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    new-instance v4, Lkqd;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lkqd;-><init>(Ljava/io/OutputStream;Z)V

    .line 111
    .local v4, "wrappedOut":Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {p0}, Lvd;->f_()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 113
    .local v1, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-static {v1, v4}, Lkpv;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :try_start_3
    invoke-static {v1}, Lkpv;->a(Ljava/io/InputStream;)V

    .line 116
    invoke-static {v4}, Lkpv;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    :try_start_4
    invoke-static {v3}, Lkpv;->a(Ljava/io/OutputStream;)V

    .line 122
    iput-object v2, p0, Lvd;->b:Ljava/io/File;

    .line 123
    iput-object p1, p0, Lvd;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 124
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "newFile":Ljava/io/File;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "wrappedOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->BODY_ENCODING_CONVERT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v7, "Unable to convert body"

    invoke-direct {v5, v6, v7, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    const-string/jumbo v5, "base64"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    new-instance v4, Lvw;

    invoke-direct {v4, v3}, Lvw;-><init>(Ljava/io/OutputStream;)V

    .restart local v4    # "wrappedOut":Ljava/io/OutputStream;
    goto :goto_1

    .line 108
    .end local v4    # "wrappedOut":Ljava/io/OutputStream;
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Target encoding not supported: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    :catchall_0
    move-exception v5

    :try_start_6
    invoke-static {v3}, Lkpv;->a(Ljava/io/OutputStream;)V

    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 115
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local v4    # "wrappedOut":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-static {v1}, Lkpv;->a(Ljava/io/InputStream;)V

    .line 116
    invoke-static {v4}, Lkpv;->a(Ljava/io/OutputStream;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final f_()Ljava/io/InputStream;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Lvd$a;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lvd;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p0, v1}, Lvd$a;-><init>(Lvd;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
