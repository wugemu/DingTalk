.class public interface abstract annotation Lcom/alibaba/bee/impl/table/DBColumn;
.super Ljava/lang/Object;
.source "DBColumn.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "_ali_sqlite_val_"
        id = false
        indexName = ""
        name = ""
        nullable = true
        sort = 0x0
        uniqueIndexName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DEFAULT_STRING:Ljava/lang/String; = "_ali_sqlite_val_"


# virtual methods
.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract id()Z
.end method

.method public abstract indexName()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract nullable()Z
.end method

.method public abstract sort()I
.end method

.method public abstract uniqueIndexName()Ljava/lang/String;
.end method
