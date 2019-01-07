.class public Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;
.super Ljava/lang/Object;
.source "ConversationMembersInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40f090bbc60a3530L


# instance fields
.field public mConversation:Lcom/alibaba/wukong/im/Conversation;

.field public mUserIdentityObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
