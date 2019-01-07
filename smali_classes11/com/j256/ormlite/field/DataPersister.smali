.class public interface abstract Lcom/j256/ormlite/field/DataPersister;
.super Ljava/lang/Object;
.source "DataPersister.java"

# interfaces
.implements Lcom/j256/ormlite/field/FieldConverter;


# virtual methods
.method public abstract a(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Number;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/reflect/Field;)Z
.end method

.method public abstract c()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract d()[Ljava/lang/String;
.end method

.method public abstract e()Z
.end method

.method public abstract f()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public abstract n()Ljava/lang/Object;
.end method

.method public abstract o()I
.end method

.method public abstract p()Z
.end method
