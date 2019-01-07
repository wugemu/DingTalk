.class public Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;
.super Ljava/lang/Object;
.source "TemplateObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5a20db016508d2c3L


# instance fields
.field public depts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;",
            ">;"
        }
    .end annotation
.end field

.field public iconMediaId:Ljava/lang/String;
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

.method public static fromIDLModel(Lcfz;)Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;
    .locals 2
    .param p0, "model"    # Lcfz;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;-><init>()V

    .line 45
    .local v0, "templateObject":Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;
    iget-object v1, p0, Lcfz;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->iconMediaId:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcfz;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->depts:Ljava/util/List;

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;)Lcfz;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lcfz;

    invoke-direct {v0}, Lcfz;-><init>()V

    .line 58
    .local v0, "templateModel":Lcfz;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->iconMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcfz;->a:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/TemplateObject;->depts:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->toIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcfz;->b:Ljava/util/List;

    goto :goto_0
.end method
