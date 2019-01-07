.class public interface abstract annotation Lcom/j256/ormlite/field/ForeignCollectionField;
.super Ljava/lang/Object;
.source "ForeignCollectionField.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/j256/ormlite/field/ForeignCollectionField;
        columnName = ""
        eager = false
        foreignFieldName = ""
        maxEagerLevel = 0x1
        orderAscending = true
        orderColumnName = ""
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
.field public static final DEFAULT_MAX_EAGER_LEVEL:I = 0x1


# virtual methods
.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract eager()Z
.end method

.method public abstract foreignFieldName()Ljava/lang/String;
.end method

.method public abstract maxEagerLevel()I
.end method

.method public abstract orderAscending()Z
.end method

.method public abstract orderColumnName()Ljava/lang/String;
.end method
