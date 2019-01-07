.class public Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;
.super Ljava/lang/Object;
.source "PromotionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e5eb7bac385b228L


# instance fields
.field public desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isOpen:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public url:Ljava/lang/String;
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

.method public static fromIDLModel(Lcfq;)Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;
    .locals 3
    .param p0, "model"    # Lcfq;

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;-><init>()V

    .line 46
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;
    if-eqz p0, :cond_0

    .line 47
    iget-object v1, p0, Lcfq;->a:Ljava/lang/Boolean;

    .line 1022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 47
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;->isOpen:Z

    .line 48
    iget-object v1, p0, Lcfq;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;->title:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcfq;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;->desc:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcfq;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;->url:Ljava/lang/String;

    .line 52
    :cond_0
    return-object v0
.end method
