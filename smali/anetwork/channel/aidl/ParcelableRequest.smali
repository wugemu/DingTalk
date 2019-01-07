.class public Lanetwork/channel/aidl/ParcelableRequest;
.super Ljava/lang/Object;
.source "ParcelableRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lanetwork/channel/aidl/ParcelableRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ANet.ParcelableRequest"


# instance fields
.field private bizId:I

.field private bodyEntry:Lanet/channel/request/BodyEntry;

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field

.field private isProtocolModifiable:Z

.field private isRedirect:Z

.field private method:Ljava/lang/String;

.field private needCookie:Z

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeout:I

.field public reqStartTime:J

.field private request:Llj;

.field private retryTime:I

.field private seqNo:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lanetwork/channel/aidl/ParcelableRequest$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/ParcelableRequest$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isProtocolModifiable:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Llj;)V
    .locals 2
    .param p1, "request"    # Llj;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isProtocolModifiable:Z

    .line 41
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    .line 42
    if-eqz p1, :cond_1

    .line 43
    invoke-interface {p1}, Llj;->a()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {p1}, Llj;->a()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    .line 49
    :cond_0
    :goto_0
    invoke-interface {p1}, Llj;->n()Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->needCookie:Z

    .line 51
    invoke-interface {p1}, Llj;->f()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    .line 52
    invoke-interface {p1}, Llj;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Llj;->c()Z

    move-result v0

    iput-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isRedirect:Z

    .line 54
    invoke-interface {p1}, Llj;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Llj;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 56
    invoke-interface {p1}, Llj;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 57
    invoke-interface {p1}, Llj;->i()Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 58
    invoke-interface {p1}, Llj;->j()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    .line 59
    invoke-interface {p1}, Llj;->k()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    .line 60
    invoke-interface {p1}, Llj;->l()I

    move-result v0

    iput v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bizId:I

    .line 61
    invoke-interface {p1}, Llj;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->reqStartTime:J

    .line 64
    return-void

    .line 45
    :cond_2
    invoke-interface {p1}, Llj;->b()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Llj;->b()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 14
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 145
    new-instance v9, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-direct {v9}, Lanetwork/channel/aidl/ParcelableRequest;-><init>()V

    .line 148
    .local v9, "wrapper":Lanetwork/channel/aidl/ParcelableRequest;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    .line 151
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    .line 155
    const/4 v10, 0x1

    new-array v7, v10, [Z

    .line 156
    .local v7, "redirect":[Z
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 157
    const/4 v10, 0x0

    aget-boolean v10, v7, v10

    iput-boolean v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->isRedirect:Z

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, "headerTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v2, v10}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 165
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 166
    .local v8, "tmp":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 167
    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 168
    .local v6, "pos":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_0

    .line 169
    new-instance v1, Lmk;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lmk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v1, "header":Llc;
    iget-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v1    # "header":Llc;
    .end local v6    # "pos":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_1
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 177
    .local v4, "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    .line 178
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 179
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 180
    .local v5, "paramStr":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 181
    const-string/jumbo v10, "&"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 182
    .restart local v6    # "pos":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v6, v10, :cond_2

    .line 183
    iget-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    new-instance v11, Lmp;

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v6    # "pos":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v5    # "paramStr":Ljava/lang/String;
    :cond_3
    const-class v10, Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lanet/channel/request/BodyEntry;

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 191
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->reqStartTime:J

    .line 193
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    .line 195
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    .line 197
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->bizId:I

    .line 199
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->needCookie:Z

    .line 203
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, v9, Lanetwork/channel/aidl/ParcelableRequest;->isProtocolModifiable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v2    # "headerTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "redirect":[Z
    :goto_4
    return-object v9

    .line 201
    .restart local v2    # "headerTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "redirect":[Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 203
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 204
    .end local v2    # "headerTmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "paramList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "redirect":[Z
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "ANet.ParcelableRequest"

    const-string/jumbo v11, "[readFromParcel]"

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v0, v13}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getBizId()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bizId:I

    return v0
.end method

.method public getBodyEntry()Lanet/channel/request/BodyEntry;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    return v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isRedirect:Z

    return v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCookieEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->needCookie:Z

    return v0
.end method

.method public isProtocolModifiable()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lanetwork/channel/aidl/ParcelableRequest;->isProtocolModifiable:Z

    return v0
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    iput-object p1, p0, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/List;

    .line 253
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 85
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    if-nez v7, :cond_0

    .line 142
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->f()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    const/4 v7, 0x1

    new-array v6, v7, [Z

    const/4 v7, 0x0

    iget-object v10, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v10}, Llj;->c()Z

    move-result v10

    aput-boolean v10, v6, v7

    .line 97
    .local v6, "redirect":[Z
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 99
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "hList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->d()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 103
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 104
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llc;

    invoke-interface {v7}, Llc;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llc;

    invoke-interface {v7}, Llc;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 111
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->g()Ljava/util/List;

    move-result-object v5

    .line 112
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v3, "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    .line 114
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 115
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lli;

    .line 116
    .local v4, "param":Lli;
    if-eqz v4, :cond_3

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lli;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lli;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    .end local v2    # "i":I
    .end local v4    # "param":Lli;
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 123
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-wide v10, p0, Lanetwork/channel/aidl/ParcelableRequest;->reqStartTime:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->j()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->k()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->l()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->request:Llj;

    invoke-interface {v7}, Llj;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->needCookie:Z

    if-eqz v7, :cond_5

    move v7, v8

    :goto_3
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-boolean v7, p0, Lanetwork/channel/aidl/ParcelableRequest;->isProtocolModifiable:Z

    if-eqz v7, :cond_6

    move v7, v8

    :goto_4
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 139
    .end local v1    # "hList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    .end local v6    # "redirect":[Z
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "ANet.ParcelableRequest"

    const-string/jumbo v8, "[writeToParcel]"

    const/4 v10, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v10, v0, v9}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "hList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    .restart local v6    # "redirect":[Z
    :cond_5
    move v7, v9

    .line 135
    goto :goto_3

    :cond_6
    move v7, v9

    .line 137
    goto :goto_4
.end method
