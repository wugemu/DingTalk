.class final Lwh$h;
.super Lvh;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field s:Ljava/lang/String;

.field final synthetic t:Lwh;


# direct methods
.method constructor <init>(Lwh;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    .locals 1
    .param p1, "this$0"    # Lwh;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .prologue
    .line 2096
    iput-object p1, p0, Lwh$h;->t:Lwh;

    invoke-direct {p0}, Lvh;-><init>()V

    .line 2093
    const-string/jumbo v0, ""

    iput-object v0, p0, Lwh$h;->s:Ljava/lang/String;

    .line 2097
    iput-object p2, p0, Lwh$h;->o:Ljava/lang/String;

    .line 2098
    iput-object p3, p0, Lwh$h;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 2099
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 4
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2216
    invoke-super {p0, p1, p2}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 2217
    iget-object v0, p0, Lwh$h;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    new-array v1, v2, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 2218
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2175
    invoke-super {p0, p1}, Lvh;->a(Ljava/io/InputStream;)V

    .line 2176
    return-void
.end method

.method public final a(Lwh$d;)V
    .locals 8
    .param p1, "envelope"    # Lwh$d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 2185
    .line 3323
    iget-object v5, p1, Lwh$d;->c:Ljava/util/ArrayList;

    invoke-static {}, Lwh;->e()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 4318
    .local v2, "headers":[Ljava/lang/String;
    iget-object v3, p1, Lwh$d;->b:Ljava/util/HashMap;

    .line 2188
    .local v3, "messageHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v0, v2, v6

    .line 2190
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2191
    .local v1, "headerValue":Ljava/lang/String;
    const-string/jumbo v5, "Content-Length"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2193
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5169
    .local v4, "size":I
    iput v4, p0, Lwh$h;->m:I

    .line 2197
    .end local v4    # "size":I
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v5, ""

    .line 2198
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2200
    invoke-virtual {p0, v0, v1}, Lwh$h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 2203
    .end local v0    # "header":Ljava/lang/String;
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 0
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2180
    invoke-super {p0, p1, p2}, Lvh;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 2181
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 2208
    invoke-virtual {p0}, Lwh$h;->p()Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v0

    check-cast v0, Lwh$e;

    .line 2209
    .local v0, "wdFolder":Lwh$e;
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Deleting message by moving to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 5199
    iget-object v2, v0, Lwh$e;->d:Lwh;

    .line 2210
    invoke-virtual {v2, p1}, Lwh;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 2211
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 2105
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2107
    const-string/jumbo v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2109
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2111
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lwh$h;->t:Lwh;

    invoke-static {v7}, Lwh;->a(Lwh;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lwh$h;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2114
    :cond_1
    const-string/jumbo v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2115
    .local v5, "urlParts":[Ljava/lang/String;
    array-length v3, v5

    .line 2116
    .local v3, "length":I
    add-int/lit8 v6, v3, -0x1

    aget-object v0, v5, v6

    .line 2118
    .local v0, "end":Ljava/lang/String;
    const-string/jumbo v6, ""

    iput-object v6, p0, Lwh$h;->s:Ljava/lang/String;

    .line 2119
    const-string/jumbo p1, ""

    .line 2126
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2127
    const-string/jumbo v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2128
    const-string/jumbo v6, "\\+"

    const-string/jumbo v7, "%20"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2145
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v3, -0x1

    if-ge v1, v6, :cond_4

    .line 2147
    if-eqz v1, :cond_3

    .line 2149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2145
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2130
    .end local v1    # "i":I
    :catch_0
    move-exception v4

    .line 2132
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 2133
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "UnsupportedEncodingException caught in setUrl: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\nTrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lwh$h;->t:Lwh;

    .line 2134
    invoke-static {v8, v4}, Lwh;->a(Lwh;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2133
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2137
    .end local v4    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 2139
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 2140
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "IllegalArgumentException caught in setUrl: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\nTrace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lwh$h;->t:Lwh;

    .line 2141
    invoke-static {v8, v2}, Lwh;->a(Lwh;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2140
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2153
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "i":I
    :cond_3
    aget-object p1, v5, v1

    goto :goto_2

    .line 2157
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2159
    iput-object p1, p0, Lwh$h;->s:Ljava/lang/String;

    .line 2160
    return-void
.end method
