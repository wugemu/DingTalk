.class public interface abstract Lanet/channel/request/BodyEntry;
.super Ljava/lang/Object;
.source "BodyEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
