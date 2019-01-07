.class public Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
.super Ljava/lang/Object;
.source "CrmCustomerObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public contactCount:Ljava/lang/Integer;

.field public customerId:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public formData:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public valueData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lcdf;)Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    .locals 3
    .param p0, "model"    # Lcdf;

    .prologue
    .line 44
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;-><init>()V

    .line 45
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;
    if-eqz p0, :cond_0

    .line 46
    iget-object v1, p0, Lcdf;->d:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->contactCount:Ljava/lang/Integer;

    .line 47
    iget-object v1, p0, Lcdf;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->customerId:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcdf;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->name:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcdf;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->summary:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcdf;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->valueData:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcdf;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->formData:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcdf;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CrmCustomerObject;->ext:Ljava/lang/String;

    .line 54
    :cond_0
    return-object v0
.end method
