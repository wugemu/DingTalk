.class public interface abstract annotation Lcom/taobao/weex/common/WXModuleAnno;
.super Ljava/lang/Object;
.source "WXModuleAnno.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/taobao/weex/common/WXModuleAnno;
        moduleMethod = true
        runOnUIThread = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract moduleMethod()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract runOnUIThread()Z
.end method
