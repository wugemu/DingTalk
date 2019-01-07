.class public interface abstract annotation Lcom/alibaba/alimei/orm/annotation/Table$Column;
.super Ljava/lang/Object;
.source "Table.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = -0x80000000
        defaultValue = ""
        index = false
        indexGroups = {}
        indexName = ""
        isAutoincrement = false
        isPrimaryKey = false
        nullable = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/orm/annotation/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Column"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract columnOrder()I
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract index()Z
.end method

.method public abstract indexGroups()[Ljava/lang/String;
.end method

.method public abstract indexName()Ljava/lang/String;
.end method

.method public abstract isAutoincrement()Z
.end method

.method public abstract isPrimaryKey()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract nullable()Z
.end method
