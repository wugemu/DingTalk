.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
.super Ljava/lang/Object;
.source "OrgExtPropertyObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6ea1aa9007ebef7cL


# instance fields
.field public itemName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public itemValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcey;)Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    .locals 2
    .param p0, "model"    # Lcey;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;-><init>()V

    .line 21
    .local v0, "extPropertyObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    iget-object v1, p0, Lcey;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcey;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;)Lcey;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcey;

    invoke-direct {v0}, Lcey;-><init>()V

    .line 32
    .local v0, "model":Lcey;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    iput-object v1, v0, Lcey;->a:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    iput-object v1, v0, Lcey;->b:Ljava/lang/String;

    goto :goto_0
.end method
