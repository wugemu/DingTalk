.class public interface abstract annotation Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
.super Ljava/lang/Object;
.source "NeedsPermission.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        defaultProcess = true
        maxSdkVersion = 0x0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultProcess()Z
.end method

.method public abstract maxSdkVersion()I
.end method

.method public abstract value()[Ljava/lang/String;
.end method
