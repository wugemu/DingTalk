.class public abstract Lcom/alibaba/doraemon/request/RequestInputStream;
.super Ljava/io/InputStream;
.source "RequestInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract length()I
.end method

.method public abstract toBytes()[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
