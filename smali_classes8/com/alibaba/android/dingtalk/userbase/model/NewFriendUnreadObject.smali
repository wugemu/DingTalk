.class public Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
.super Ljava/lang/Object;
.source "NewFriendUnreadObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$TYPE;,
        Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;
    }
.end annotation


# instance fields
.field public avatar:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field public unreadCount:I

.field public users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
