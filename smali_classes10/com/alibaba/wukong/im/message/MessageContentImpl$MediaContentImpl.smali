.class public abstract Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$MediaContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaContentImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x32b3e26d139507b7L


# instance fields
.field public mAuthCode:Ljava/lang/String;

.field public mAuthUrl:Ljava/lang/String;

.field public mExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSize:J

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "size"    # J

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 242
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    .line 243
    iput-wide p3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mSize:J

    .line 244
    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mAuthUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mExtension:Ljava/util/Map;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mAuthCode:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setAuthUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "authUrl"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public size()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mSize:J

    return-wide v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$MediaContentImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
