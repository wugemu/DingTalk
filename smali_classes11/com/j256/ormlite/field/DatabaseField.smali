.class public interface abstract annotation Lcom/j256/ormlite/field/DatabaseField;
.super Ljava/lang/Object;
.source "DatabaseField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/j256/ormlite/field/DatabaseField;
        allowGeneratedIdInsert = false
        canBeNull = true
        columnDefinition = ""
        columnName = ""
        dataType = .enum Lcom/j256/ormlite/field/DataType;->UNKNOWN:Lcom/j256/ormlite/field/DataType;
        defaultValue = "__ormlite__ no default value string was specified"
        foreign = false
        foreignAutoCreate = false
        foreignAutoRefresh = false
        foreignColumnName = ""
        format = ""
        generatedId = false
        generatedIdSequence = ""
        id = false
        index = false
        indexName = ""
        maxForeignAutoRefreshLevel = 0x2
        persisted = true
        persisterClass = Lcom/j256/ormlite/field/types/VoidType;
        readOnly = false
        throwIfNull = false
        unique = false
        uniqueCombo = false
        uniqueIndex = false
        uniqueIndexName = ""
        unknownEnumName = ""
        useGetSet = false
        version = false
        width = 0x0
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
.field public static final DEFAULT_MAX_FOREIGN_AUTO_REFRESH_LEVEL:I = 0x2

.field public static final DEFAULT_STRING:Ljava/lang/String; = "__ormlite__ no default value string was specified"


# virtual methods
.method public abstract allowGeneratedIdInsert()Z
.end method

.method public abstract canBeNull()Z
.end method

.method public abstract columnDefinition()Ljava/lang/String;
.end method

.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract dataType()Lcom/j256/ormlite/field/DataType;
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract foreign()Z
.end method

.method public abstract foreignAutoCreate()Z
.end method

.method public abstract foreignAutoRefresh()Z
.end method

.method public abstract foreignColumnName()Ljava/lang/String;
.end method

.method public abstract format()Ljava/lang/String;
.end method

.method public abstract generatedId()Z
.end method

.method public abstract generatedIdSequence()Ljava/lang/String;
.end method

.method public abstract id()Z
.end method

.method public abstract index()Z
.end method

.method public abstract indexName()Ljava/lang/String;
.end method

.method public abstract maxForeignAutoRefreshLevel()I
.end method

.method public abstract persisted()Z
.end method

.method public abstract persisterClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/field/DataPersister;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readOnly()Z
.end method

.method public abstract throwIfNull()Z
.end method

.method public abstract unique()Z
.end method

.method public abstract uniqueCombo()Z
.end method

.method public abstract uniqueIndex()Z
.end method

.method public abstract uniqueIndexName()Ljava/lang/String;
.end method

.method public abstract unknownEnumName()Ljava/lang/String;
.end method

.method public abstract useGetSet()Z
.end method

.method public abstract version()Z
.end method

.method public abstract width()I
.end method
