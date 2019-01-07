.class public interface abstract annotation Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
        alias = ""
        columnOrder = -0x80000000
        tableName = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/orm/annotation/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ViewColumn"
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
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract columnOrder()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract tableName()Ljava/lang/String;
.end method
