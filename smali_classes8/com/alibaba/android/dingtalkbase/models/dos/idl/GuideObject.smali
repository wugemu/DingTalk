.class public Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;
.super Ljava/lang/Object;
.source "GuideObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e5eb7bac385b1baL


# instance fields
.field public msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showGuide:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showXpn:Z
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lckz;)Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;
    .locals 3
    .param p0, "model"    # Lckz;

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;-><init>()V

    .line 41
    .local v0, "object":Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;
    if-eqz p0, :cond_0

    .line 42
    iget-object v1, p0, Lckz;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->msg:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lckz;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->url:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lckz;->c:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 44
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->showXpn:Z

    .line 45
    iget-object v1, p0, Lckz;->d:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 45
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/GuideObject;->showGuide:Z

    .line 47
    :cond_0
    return-object v0
.end method
