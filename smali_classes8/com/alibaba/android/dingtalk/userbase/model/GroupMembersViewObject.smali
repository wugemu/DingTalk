.class public Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
.super Ljava/lang/Object;
.source "GroupMembersViewObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x597728f221959bc2L


# instance fields
.field public color:Ljava/lang/String;

.field public empName:Ljava/lang/String;

.field public uid:J

.field public workStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lcdx;)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    .locals 4
    .param p0, "model"    # Lcdx;

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;-><init>()V

    .line 52
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    iget-object v1, p0, Lcdx;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->color:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcdx;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->empName:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcdx;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->uid:J

    .line 55
    iget-object v1, p0, Lcdx;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->workStatus:Ljava/lang/String;

    .line 56
    return-object v0
.end method


# virtual methods
.method public toIDLModel()Lcdx;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    new-instance v0, Lcdx;

    invoke-direct {v0}, Lcdx;-><init>()V

    .line 42
    .local v0, "model":Lcdx;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->color:Ljava/lang/String;

    iput-object v1, v0, Lcdx;->c:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->empName:Ljava/lang/String;

    iput-object v1, v0, Lcdx;->d:Ljava/lang/String;

    .line 44
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdx;->a:Ljava/lang/Long;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->workStatus:Ljava/lang/String;

    iput-object v1, v0, Lcdx;->b:Ljava/lang/String;

    .line 46
    return-object v0
.end method
