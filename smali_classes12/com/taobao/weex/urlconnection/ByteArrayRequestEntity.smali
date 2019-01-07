.class public Lcom/taobao/weex/urlconnection/ByteArrayRequestEntity;
.super Ljava/lang/Object;
.source "ByteArrayRequestEntity.java"

# interfaces
.implements Lcom/taobao/weex/urlconnection/SimpleRequestEntity;


# instance fields
.field private final mData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/taobao/weex/urlconnection/ByteArrayRequestEntity;->mData:[B

    .line 20
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/taobao/weex/urlconnection/ByteArrayRequestEntity;->mData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 25
    return-void
.end method
