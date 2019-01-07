.class public Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;
.super Ljava/lang/Object;
.source "RedDotObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COMMON:I = 0x1

.field public static final TYPE_NEW:I = 0x2

.field public static final TYPE_TEXT:I = 0x3

.field private static final serialVersionUID:J = -0x3e5eb7bac385b228L


# instance fields
.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcft;)Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;
    .locals 6
    .param p0, "model"    # Lcft;

    .prologue
    const-wide/16 v4, 0x0

    .line 64
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;-><init>()V

    .line 65
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;
    if-eqz p0, :cond_0

    .line 66
    iget-object v1, p0, Lcft;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 66
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->type:J

    .line 67
    iget-object v1, p0, Lcft;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->message:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcft;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 68
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->version:J

    .line 69
    iget-object v1, p0, Lcft;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->url:Ljava/lang/String;

    .line 71
    :cond_0
    return-object v0
.end method
