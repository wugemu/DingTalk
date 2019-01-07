.class public interface abstract Lcom/j256/ormlite/support/ConnectionSource;
.super Ljava/lang/Object;
.source "ConnectionSource.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract b()Lcom/j256/ormlite/db/DatabaseType;
.end method

.method public abstract b(Lcom/j256/ormlite/support/DatabaseConnection;)V
.end method

.method public abstract c()Lcom/j256/ormlite/support/DatabaseConnection;
.end method
