.class public interface abstract annotation Lcom/taobao/weex/annotation/JSMethod;
.super Ljava/lang/Object;
.source "JSMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/taobao/weex/annotation/JSMethod;
        alias = "_"
        uiThread = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final NOT_SET:Ljava/lang/String; = "_"


# virtual methods
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract uiThread()Z
.end method
