.class public interface abstract Lklo;
.super Ljava/lang/Object;
.source "ConnectionBuilder.java"


# virtual methods
.method public abstract a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
