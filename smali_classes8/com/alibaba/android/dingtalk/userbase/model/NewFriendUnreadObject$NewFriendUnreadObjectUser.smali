.class public Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;
.super Ljava/lang/Object;
.source "NewFriendUnreadObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewFriendUnreadObjectUser"
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public createTime:J

.field public mTYPE:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;

.field public nick:Ljava/lang/String;

.field public orgAuthLevel:I

.field public orgName:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public status:I

.field public uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
