.class public Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
.super Ljava/lang/Object;
.source "PersonStatusObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public et:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public ext:Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObjectExt;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public st:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
