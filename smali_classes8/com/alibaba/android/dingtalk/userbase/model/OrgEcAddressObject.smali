.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;
.super Ljava/lang/Object;
.source "OrgEcAddressObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public addressId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public area:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public corpId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public detailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public province:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:I
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

.method public static fromIDLModel(Lceq;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;
    .locals 3
    .param p0, "model"    # Lceq;

    .prologue
    const/4 v2, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;-><init>()V

    .line 58
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;
    iget-object v1, p0, Lceq;->a:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 58
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->addressId:I

    .line 59
    iget-object v1, p0, Lceq;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->name:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lceq;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->province:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lceq;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->city:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lceq;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->area:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lceq;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->detailAddress:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lceq;->g:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 64
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->status:I

    .line 65
    iget-object v1, p0, Lceq;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->orgName:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lceq;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->corpId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toIDLModel()Lceq;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    new-instance v0, Lceq;

    invoke-direct {v0}, Lceq;-><init>()V

    .line 72
    .local v0, "model":Lceq;
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->addressId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lceq;->a:Ljava/lang/Integer;

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->province:Ljava/lang/String;

    iput-object v1, v0, Lceq;->c:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->city:Ljava/lang/String;

    iput-object v1, v0, Lceq;->d:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->area:Ljava/lang/String;

    iput-object v1, v0, Lceq;->e:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->detailAddress:Ljava/lang/String;

    iput-object v1, v0, Lceq;->f:Ljava/lang/String;

    .line 77
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lceq;->g:Ljava/lang/Integer;

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lceq;->h:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;->corpId:Ljava/lang/String;

    iput-object v1, v0, Lceq;->i:Ljava/lang/String;

    .line 80
    return-object v0
.end method
