.class public Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
.super Ljava/lang/Object;
.source "TeamScaleObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public memberLimit:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "memberLimit"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    .line 39
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->memberLimit:I

    .line 41
    return-void
.end method

.method public static fromIDLModel(Lcfy;)Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    .locals 3
    .param p0, "model"    # Lcfy;

    .prologue
    const/4 v2, 0x0

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;-><init>()V

    .line 49
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    iget-object v1, p0, Lcfy;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 49
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    .line 50
    iget-object v1, p0, Lcfy;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcfy;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->memberLimit:I

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lcfy;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    new-instance v0, Lcfy;

    invoke-direct {v0}, Lcfy;-><init>()V

    .line 57
    .local v0, "model":Lcfy;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfy;->a:Ljava/lang/Integer;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    iput-object v1, v0, Lcfy;->b:Ljava/lang/String;

    .line 59
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->memberLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcfy;->c:Ljava/lang/Integer;

    .line 61
    return-object v0
.end method
