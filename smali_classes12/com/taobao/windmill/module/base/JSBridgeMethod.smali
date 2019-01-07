.class public interface abstract annotation Lcom/taobao/windmill/module/base/JSBridgeMethod;
.super Ljava/lang/Object;
.source "JSBridgeMethod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/taobao/windmill/module/base/JSBridgeMethod;
        alias = "__"
        uiThread = false
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
.field public static final NOT_SET:Ljava/lang/String; = "__"


# virtual methods
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract uiThread()Z
.end method
