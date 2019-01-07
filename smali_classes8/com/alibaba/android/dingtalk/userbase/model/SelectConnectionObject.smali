.class public Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;
.super Ljava/lang/Object;
.source "SelectConnectionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x182f5c61335a2034L


# instance fields
.field public disabledUsers:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public friendType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public limitTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public max:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public pickTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public pickedUsers:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public requiredUsers:[J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
