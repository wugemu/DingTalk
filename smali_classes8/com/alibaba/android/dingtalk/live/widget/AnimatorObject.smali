.class public Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;
.super Ljava/lang/Object;
.source "AnimatorObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x653006f3be89c2e4L


# instance fields
.field public alpha:F

.field public scaleX:F

.field public scaleY:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleX:F

    .line 18
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->scaleY:F

    .line 20
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/widget/AnimatorObject;->alpha:F

    return-void
.end method
