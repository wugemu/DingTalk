.class public Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;
.super Ljava/lang/Object;
.source "OrgShortNameAuthObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x304fc0c0096742faL


# instance fields
.field public authStatus:I

.field public authUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lchm;)Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;
    .locals 3
    .param p0, "model"    # Lchm;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;-><init>()V

    .line 24
    .local v0, "orgShortNameAuthObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;
    iget-object v1, p0, Lchm;->a:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 24
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;->authStatus:I

    .line 25
    iget-object v1, p0, Lchm;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgShortNameAuthObject;->authUrl:Ljava/lang/String;

    goto :goto_0
.end method
