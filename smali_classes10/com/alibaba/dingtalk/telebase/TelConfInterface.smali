.class public abstract Lcom/alibaba/dingtalk/telebase/TelConfInterface;
.super Lckb;
.source "TelConfInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p1, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 307
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUid"    # J

    .prologue
    .line 494
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUser"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p3, "quickStartSource"    # Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .prologue
    .line 605
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 66
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "corpId"    # Ljava/lang/String;

    .prologue
    .line 710
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "corpId"    # Ljava/lang/String;
    .param p4, "bizType"    # I

    .prologue
    .line 730
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0
    .param p1, "fromContext"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "uid"    # J

    .prologue
    .line 720
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;JI)V
    .locals 0
    .param p1, "fromContext"    # Landroid/app/Activity;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "bizType"    # I

    .prologue
    .line 740
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "agentId"    # Ljava/lang/String;
    .param p7, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Lgws;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    .local p8, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p9, "listener":Lcma;, "Lcma<Lgws;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;

    .prologue
    .line 485
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "extras"    # Landroid/os/Bundle;
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
    .line 76
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 362
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "toUid"    # J
    .param p4, "cid"    # Ljava/lang/String;

    .prologue
    .line 122
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "userObj"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 103
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/Long;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "toUid"    # Ljava/lang/Long;
    .param p3, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 433
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reservationId"    # Ljava/lang/String;

    .prologue
    .line 379
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .prologue
    .line 443
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "confID"    # Ljava/lang/String;
    .param p3, "newVersion"    # Z

    .prologue
    .line 397
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "userObjs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 586
    return-void
.end method

.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "data":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "data":Lcma;, "Lcma<Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "configValue"    # Ljava/lang/String;

    .prologue
    .line 298
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toUserId"    # J
    .param p4, "stateCode"    # Ljava/lang/String;
    .param p5, "mobile"    # Ljava/lang/String;

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "download"    # Z
    .param p3, "negativeBtnTxt"    # Ljava/lang/String;
    .param p4, "negativeBtnListener"    # Landroid/view/View$OnClickListener;
    .param p5, "positiveBtnTxt"    # Ljava/lang/String;
    .param p6, "positiveBtnListener"    # Landroid/view/View$OnClickListener;
    .param p7, "hintTitle"    # Ljava/lang/String;
    .param p8, "hintMsg"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;)Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 635
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/telebase/models/PhoneNumberInfo;-><init>()V

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 85
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "confID"    # Ljava/lang/String;

    .prologue
    .line 388
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stateCode"    # Ljava/lang/String;
    .param p3, "mobile"    # Ljava/lang/String;

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fromContext"    # Landroid/content/Context;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public m()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method
