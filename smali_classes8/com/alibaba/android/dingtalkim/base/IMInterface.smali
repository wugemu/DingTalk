.class public abstract Lcom/alibaba/android/dingtalkim/base/IMInterface;
.super Lckb;
.source "IMInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$RobotMarkdownExObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$AudioMessageObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;,
        Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lckb;-><init>()V

    .line 354
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalkim/base/IMInterface;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/dingtalkim/base/IMInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 2019
    const/4 v0, 0x1

    return v0
.end method

.method public B()Lcom/alibaba/wukong/im/ConversationDisplayProxy;
    .locals 1

    .prologue
    .line 2159
    const/4 v0, 0x0

    return-object v0
.end method

.method public C()V
    .locals 0

    .prologue
    .line 2312
    return-void
.end method

.method public D()V
    .locals 0

    .prologue
    .line 2319
    return-void
.end method

.method public E()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2332
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILjava/util/Map;)I
    .locals 1
    .param p1, "conversationTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1071
    .local p2, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)I
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .prologue
    .line 1852
    const/4 v0, -0x1

    return v0
.end method

.method public a(JLjava/util/Map;)J
    .locals 2
    .param p1, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1383
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 759
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)J"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2163
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public a(JLjava/util/List;Ldbx;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "orgId"    # J
    .param p4, "progressCallback"    # Ldbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ldbx;",
            ")",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 1984
    .local p3, "openIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "iChooseControl"    # Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "category"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    .prologue
    .line 1394
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "type"    # I

    .prologue
    .line 2358
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;->Text:Lcom/alibaba/android/dingtalkim/base/msgsearch/ChatDetailViewType;

    return-object v0
.end method

.method public a(Ljava/util/List;I)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;I)",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Lcom/alibaba/wukong/im/MessageContent;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ldbw$a;)Ldbw;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "statisticFrom"    # Ljava/lang/String;
    .param p5, "listener"    # Ldbw$a;

    .prologue
    .line 1031
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/app/Activity;I)Ldcs;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    .line 2347
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)Ldcx;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "waterMarkView"    # Landroid/view/View;

    .prologue
    .line 2371
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JJ)Ljava/lang/String;
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "uid"    # J

    .prologue
    .line 2104
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(JJZ)Ljava/lang/String;
    .locals 1
    .param p1, "creatorUid"    # J
    .param p3, "uid"    # J
    .param p5, "isSpecialConversation"    # Z

    .prologue
    .line 1302
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1406
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1017
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1952
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;
    .locals 1
    .param p1, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;

    .prologue
    .line 2051
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/List;Z)Ljava/lang/String;
    .locals 1
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "titleInfo"    # Ljava/util/Map;

    .prologue
    .line 2222
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2214
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2210
    .local p2, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p2, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "activityHashcode"    # I

    .prologue
    .line 1452
    return-void
.end method

.method public a(ILcma;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcma;)V
    .locals 0
    .param p1, "activityHashcode"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1443
    .local p4, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(ILjava/util/Map;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 0
    .param p1, "conversationTag"    # I
    .param p3, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p2, "conversationExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public a(JJLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "listener"    # Lcma;

    .prologue
    .line 1271
    return-void
.end method

.method public a(JJZLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "useDeptName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 961
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(JLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1093
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V
    .locals 0
    .param p1, "uid"    # J
    .param p3, "sendMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .param p4, "listener"    # Lcma;

    .prologue
    .line 397
    return-void
.end method

.method public a(JLjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcma;

    .prologue
    .line 1006
    return-void
.end method

.method public a(JLjava/util/List;Ljava/lang/Long;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p4, "returnFiledBits"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;>;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 609
    return-void
.end method

.method public a(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "maxTime"    # I

    .prologue
    .line 1179
    return-void
.end method

.method public a(Landroid/app/Activity;IIII)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "maxTime"    # I
    .param p4, "cameraPosition"    # I
    .param p5, "minTime"    # I

    .prologue
    .line 1202
    return-void
.end method

.method public a(Landroid/app/Activity;IIIIII)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "mode"    # I
    .param p4, "cameraPosition"    # I
    .param p5, "maxTime"    # I
    .param p6, "minTime"    # I
    .param p7, "quality"    # I

    .prologue
    .line 1214
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 1545
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "chatId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcma;

    .prologue
    .line 1003
    return-void
.end method

.method public a(Landroid/app/Activity;JZZ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .param p4, "onlyMyGroup"    # Z
    .param p5, "isAllowCreateGroup"    # Z

    .prologue
    .line 993
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 997
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 1832
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;Lcjo$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
    .param p3, "listener"    # Lcjo$a;

    .prologue
    .line 837
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .prologue
    .line 1000
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botModelObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 1822
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botTemplateObject"    # Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1595
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "successBroadcastAction"    # Ljava/lang/String;

    .prologue
    .line 1682
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "newTask"    # Z

    .prologue
    .line 619
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "newTask"    # Z
    .param p4, "statisticFrom"    # Ljava/lang/String;

    .prologue
    .line 629
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 672
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1690
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "messageId"    # J

    .prologue
    .line 1962
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "videoSize"    # J
    .param p5, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 1243
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "tag"    # J
    .param p5, "staticsFrom"    # Ljava/lang/String;
    .param p6, "newTask"    # Z

    .prologue
    .line 1155
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 581
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "newTask"    # Z

    .prologue
    .line 651
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "btnText"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 593
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2180
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "newTask"    # Z

    .prologue
    .line 639
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;JLandroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "orgId"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1674
    .local p2, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "dingId"    # J
    .param p5, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2175
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1665
    .local p2, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;Ldca;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Ldca;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ldca;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2062
    .local p2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 911
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 976
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "flag"    # I

    .prologue
    .line 2190
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 780
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .prologue
    .line 791
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/dingtalkim/base/model/Dt3rdPartyAuthObject;

    .prologue
    .line 2197
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/alibaba/android/dingtalkim/base/util/NavConversationParam;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "newTask"    # Z

    .prologue
    .line 2121
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 921
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 770
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "flags"    # I

    .prologue
    .line 803
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupRingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2435
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 663
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 2242
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "filter"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .prologue
    .line 544
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Lcrb;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "onListScrollListener"    # Lcrb;

    .prologue
    .line 553
    return-void
.end method

.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "uid"    # J
    .param p4, "aliFileMsgDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    .param p5, "textMsg"    # Ljava/lang/String;

    .prologue
    .line 2416
    return-void
.end method

.method public a(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .prologue
    .line 1080
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "sendMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .param p3, "listener"    # Lcma;

    .prologue
    const/4 v0, 0x0

    .line 381
    if-eqz p3, :cond_0

    .line 382
    invoke-interface {p3, v0, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2088
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;>;"
    return-void
.end method

.method public a(Ljava/lang/String;JLcma;)V
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "mid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcma;, "Lcma<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v0, 0x0

    .line 462
    if-eqz p4, :cond_0

    .line 463
    invoke-interface {p4, v0, v0}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JZLcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .param p4, "liked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1767
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/app/Activity;Lcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1659
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/GroupRobotInfo;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1747
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/dingtalkim/base/model/ConversationMembersInfo;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Long;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;D)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "scaleFactor"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 2261
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 1885
    return-void
.end method

.method public a(ZLcma;)V
    .locals 0
    .param p1, "isRemind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1787
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(J)Z
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 1315
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1790
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z
    .locals 1
    .param p1, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 1113
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 1916
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 407
    .local p3, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;",
            ">;)",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;"
        }
    .end annotation

    .prologue
    .line 2269
    .local p1, "filterTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Ldco;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1231
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1980
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .param p2, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2230
    .local p1, "contentInfo":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map;>;"
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public b(Ljava/util/List;Z)Ljava/lang/String;
    .locals 1
    .param p2, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;
    .locals 1
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2077
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2218
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "uidNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p2, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public b(JJLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1726
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public b(JJZLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "deptId"    # J
    .param p5, "includeHide"    # Z
    .param p6, "listener"    # Lcma;

    .prologue
    .line 1264
    return-void
.end method

.method public b(JLcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 967
    return-void
.end method

.method public b(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botId"    # J

    .prologue
    .line 1661
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1521
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "customerId"    # Ljava/lang/String;

    .prologue
    .line 964
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "messageId"    # J

    .prologue
    .line 1972
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoUrl"    # Ljava/lang/String;
    .param p3, "videoSize"    # J
    .param p5, "picUrl"    # Ljava/lang/String;

    .prologue
    .line 1254
    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "statisticFrom"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1513
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2130
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "flag"    # I

    .prologue
    .line 2207
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 930
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 894
    return-void
.end method

.method public b(Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    return-void
.end method

.method public b(Ljava/util/List;Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2368
    .local p1, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    return-void
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 1899
    return-void
.end method

.method public b(J)Z
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 1698
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z
    .locals 1
    .param p1, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 1117
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2391
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2398
    .local p1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public c(J)V
    .locals 0
    .param p1, "version"    # J

    .prologue
    .line 2000
    return-void
.end method

.method public c(JLcma;)V
    .locals 0
    .param p1, "templateId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;>;"
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1504
    return-void
.end method

.method public c(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "botId"    # J

    .prologue
    .line 1663
    return-void
.end method

.method public c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1620
    return-void
.end method

.method public c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qrcode"    # Ljava/lang/String;

    .prologue
    .line 973
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2139
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 980
    return-void
.end method

.method public c(Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 2305
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 902
    return-void
.end method

.method public c(Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1757
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public c(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1708
    .local p2, "listener":Lcma;, "Lcma<[B>;"
    return-void
.end method

.method public c(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 2008
    return-void
.end method

.method public d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(J)Ljava/util/List;
    .locals 1
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2167
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(JLcma;)V
    .locals 0
    .param p1, "robotUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1835
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;>;"
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1774
    return-void
.end method

.method public d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1701
    return-void
.end method

.method public d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 1280
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 984
    return-void
.end method

.method public d(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "chatbotUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1843
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public d(Z)V
    .locals 0
    .param p1, "isResumed"    # Z

    .prologue
    .line 2339
    return-void
.end method

.method public d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1325
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 2383
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1461
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public e(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .prologue
    .line 2170
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2326
    return-void
.end method

.method public e(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2288
    return-void
.end method

.method public e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1562
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 2279
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    .line 1483
    return-void
.end method

.method public e(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 2380
    return-void
.end method

.method public e(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1335
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)J
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1575
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2297
    return-void
.end method

.method public f(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imHealthStaticsFrom"    # Ljava/lang/String;

    .prologue
    .line 1582
    return-void
.end method

.method public f(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1365
    const/4 v0, 0x0

    return v0
.end method

.method public g(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1374
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public g(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imHealthStaticsFrom"    # Ljava/lang/String;

    .prologue
    .line 1586
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1992
    return-void
.end method

.method public h(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1907
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 855
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1925
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public j(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1934
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 880
    return-void
.end method

.method public k(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1943
    const/4 v0, 0x0

    return v0
.end method

.method public l(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public m()Lcom/alibaba/wukong/im/EncryptHelper;
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2250
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()V
    .locals 0

    .prologue
    .line 1162
    return-void
.end method

.method public o()V
    .locals 0

    .prologue
    .line 1169
    return-void
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 1222
    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 0

    .prologue
    .line 1306
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 1469
    return-void
.end method

.method public s()V
    .locals 0

    .prologue
    .line 1476
    return-void
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 1489
    const/4 v0, 0x0

    return v0
.end method

.method public u()Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;
    .locals 1

    .prologue
    .line 1627
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 1636
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 1860
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 1876
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 1891
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 2015
    const/4 v0, 0x1

    return v0
.end method
