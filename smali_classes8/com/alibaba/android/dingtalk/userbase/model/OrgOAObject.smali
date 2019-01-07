.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;
.super Ljava/lang/Object;
.source "OrgOAObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7376358ede4a5272L


# instance fields
.field public iconMediaId:Ljava/lang/String;
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcfk;)Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;
    .locals 2
    .param p0, "model"    # Lcfk;

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;-><init>()V

    .line 23
    .local v0, "orgOAObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;
    if-eqz p0, :cond_0

    .line 24
    iget-object v1, p0, Lcfk;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->iconMediaId:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcfk;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->title:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcfk;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->url:Ljava/lang/String;

    .line 28
    :cond_0
    return-object v0
.end method

.method public static toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;)Lcfk;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    .prologue
    .line 32
    new-instance v0, Lcfk;

    invoke-direct {v0}, Lcfk;-><init>()V

    .line 33
    .local v0, "model":Lcfk;
    if-eqz p0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->iconMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcfk;->a:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcfk;->b:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->url:Ljava/lang/String;

    iput-object v1, v0, Lcfk;->c:Ljava/lang/String;

    .line 38
    :cond_0
    return-object v0
.end method
