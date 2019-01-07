.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;
.super Ljava/lang/Object;
.source "FriendTagPushObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xbac6ab7149eccfaL


# instance fields
.field public oldTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static fromIdl(Lcdw;)Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;
    .locals 4
    .param p0, "model"    # Lcdw;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;-><init>()V

    .line 35
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;
    iget-object v1, p0, Lcdw;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->oldTag:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcdw;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->tag:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcdw;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    .line 38
    iget-object v1, p0, Lcdw;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->uid:J

    goto :goto_0
.end method


# virtual methods
.method public toIdl()Lcdw;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 43
    new-instance v0, Lcdw;

    invoke-direct {v0}, Lcdw;-><init>()V

    .line 44
    .local v0, "model":Lcdw;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcdw;->a:Ljava/lang/Long;

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcdw;->c:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->oldTag:Ljava/lang/String;

    iput-object v1, v0, Lcdw;->d:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;->access$000(Lcom/alibaba/android/dingtalk/userbase/model/FriendTagPushObject$FriendTagsType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcdw;->b:Ljava/lang/Integer;

    .line 50
    :cond_0
    return-object v0
.end method
