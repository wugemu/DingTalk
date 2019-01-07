.class public Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;
.super Ljava/lang/Object;
.source "LogObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e5eb7bac3a76af8L


# instance fields
.field public app:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public appVer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public code:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public level:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public os:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public osVer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;)Lcla;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcla;

    invoke-direct {v0}, Lcla;-><init>()V

    .line 67
    .local v0, "model":Lcla;
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcla;->a:Ljava/lang/Integer;

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcla;->b:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->app:Ljava/lang/String;

    iput-object v1, v0, Lcla;->c:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->appVer:Ljava/lang/String;

    iput-object v1, v0, Lcla;->d:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->os:Ljava/lang/String;

    iput-object v1, v0, Lcla;->e:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->osVer:Ljava/lang/String;

    iput-object v1, v0, Lcla;->f:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->manufacturer:Ljava/lang/String;

    iput-object v1, v0, Lcla;->g:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->model:Ljava/lang/String;

    iput-object v1, v0, Lcla;->h:Ljava/lang/String;

    .line 75
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcla;->i:Ljava/lang/Integer;

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/models/dos/idl/LogObject;->message:Ljava/lang/String;

    iput-object v1, v0, Lcla;->j:Ljava/lang/String;

    goto :goto_0
.end method
