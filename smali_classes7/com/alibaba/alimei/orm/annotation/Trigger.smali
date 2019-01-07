.class public interface abstract annotation Lcom/alibaba/alimei/orm/annotation/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/alimei/orm/annotation/Trigger;
        ofColumnName = ""
        whenExpression = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/orm/annotation/Trigger$TriggerStatement;
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
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract ofColumnName()Ljava/lang/String;
.end method

.method public abstract onTableName()Ljava/lang/String;
.end method

.method public abstract triggerOperation()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerOperation;
.end method

.method public abstract triggerType()Lcom/alibaba/alimei/sqlite/SQLiteTrigger$TriggerType;
.end method

.method public abstract whenExpression()Ljava/lang/String;
.end method
