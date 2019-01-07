.class public abstract Lcom/alibaba/doraemon/image/ImageInputStream;
.super Ljava/io/InputStream;
.source "ImageInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isTooLarge2Bytes()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract read2Bytes()[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
