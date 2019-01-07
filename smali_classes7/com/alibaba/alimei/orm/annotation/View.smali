.class public interface abstract annotation Lcom/alibaba/alimei/orm/annotation/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/alimei/orm/annotation/View;
        groupBy = ""
        having = ""
        isDistinct = false
        limit = ""
        orderBy = ""
        viewType = " "
        where = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/orm/annotation/View$ViewColumn;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract from()Ljava/lang/String;
.end method

.method public abstract groupBy()Ljava/lang/String;
.end method

.method public abstract having()Ljava/lang/String;
.end method

.method public abstract isDistinct()Z
.end method

.method public abstract limit()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract orderBy()Ljava/lang/String;
.end method

.method public abstract viewType()Ljava/lang/String;
.end method

.method public abstract where()Ljava/lang/String;
.end method
