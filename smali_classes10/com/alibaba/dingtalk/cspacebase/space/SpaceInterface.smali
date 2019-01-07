.class public abstract Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
.super Lckb;
.source "SpaceInterface.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    const-string/jumbo v0, "2"

    sput-object v0, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a:Ljava/lang/String;

    .line 360
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)J
.end method

.method public a(Ljava/lang/String;ZZ)Lgqy;
    .locals 3
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "readOnly"    # Z
    .param p3, "isCrypt"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1173
    new-instance v0, Lgqy;

    const/4 v1, -0x1

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lgqy;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lgrd;
    .locals 1
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 1177
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lgrg;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 1101
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "isCrypt"    # Z

    .prologue
    .line 1034
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public a(JJLcma;)V
    .locals 0
    .param p1, "spaceId"    # J
    .param p3, "fileId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lgrh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p5, "listener":Lcma;, "Lcma<Lgrh;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fileOwnerId"    # J

    .prologue
    .line 1094
    return-void
.end method

.method public a(Landroid/app/Activity;JLcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1139
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Conversation;)V
.end method

.method public abstract a(Landroid/app/Activity;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "orgId"    # J
    .param p5, "messageId"    # J
    .param p7, "conversationId"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 443
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 1181
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1211
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .prologue
    .line 408
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    .prologue
    .line 1091
    return-void
.end method

.method public abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
.end method

.method public a(Landroid/app/Activity;Lgqz;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "localEditParam"    # Lgqz;

    .prologue
    .line 1169
    return-void
.end method

.method public a(Landroid/app/Activity;Lgrb;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "args"    # Lgrb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lgrb;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/app/Activity;Ljava/lang/String;IILcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lchr;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;

    .prologue
    .line 936
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "actionFlag"    # Ljava/lang/String;
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "isCopy"    # Z
    .param p5, "max"    # I

    .prologue
    .line 404
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Lcma",
            "<",
            "Lcko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .local p4, "listener":Lcma;, "Lcma<Lcko;>;"
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1106
    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 671
    return-void
.end method

.method public abstract a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZ)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 580
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "lastMsgTip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 570
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "folderName"    # Ljava/lang/String;
    .param p7, "spaceType"    # I
    .param p8, "isAdmin"    # Z

    .prologue
    .line 1119
    return-void
.end method

.method public a(Landroid/content/Context;JLjava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationOrgId"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 588
    .local p4, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "orgId"    # J

    .prologue
    .line 559
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 418
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 765
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Object;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    .prologue
    .line 1085
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .prologue
    .line 1098
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Lcma;)V
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 523
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcma;",
            ")V"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1127
    .local p3, "spaceImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p4, "otherImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lgrc;Lgqt;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lgrc;
    .param p3, "listener"    # Lgqt;

    .prologue
    .line 502
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareLink"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "objectType"    # I
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;

    .prologue
    .line 826
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "objectType"    # I
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 830
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 585
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1222
    .local p4, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgqt;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callback"    # Lgqt;

    .prologue
    .line 745
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 506
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "dentryId"    # Ljava/lang/String;
    .param p4, "dentryName"    # Ljava/lang/String;
    .param p5, "dentryExtension"    # Ljava/lang/String;
    .param p6, "enableEdit"    # Z
    .param p7, "newBorn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p8, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 998
    return-void
.end method

.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public abstract a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;J)V
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 751
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 730
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 1253
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLcma;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "isNotifyProgress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 735
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLgqr;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "isNotifyProgress"    # Z
    .param p3, "callback"    # Lgqr;

    .prologue
    .line 739
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLgqr;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "isNotifyProgress"    # Z
    .param p3, "immediately"    # Z
    .param p4, "callback"    # Lgqr;

    .prologue
    .line 741
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1214
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 890
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JLcma;)V
    .locals 0
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "totalFileSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcma",
            "<",
            "Lgre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1236
    .local p2, "fileNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listener":Lcma;, "Lcma<Lgre;>;"
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0
    .param p1, "uploadParams"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p2, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    return-void
.end method

.method public a(Lgqq;)V
    .locals 0
    .param p1, "checkAccountLoginListener"    # Lgqq;

    .prologue
    .line 929
    return-void
.end method

.method public a(Ljava/lang/String;ILcma;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    .local p3, "callback":Lcma;, "Lcma<Lgqw;>;"
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "replayId"    # J
    .param p7, "content"    # Ljava/lang/String;
    .param p8, "msgId"    # Ljava/lang/String;
    .param p9, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p6, "ats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p10, "callback":Lcma;, "Lcma<Lgqw;>;"
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p4, "callback":Lcma;, "Lcma<Lgqw;>;"
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    .local p5, "callback":Lcma;, "Lcma<Lgqw;>;"
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p6, "callback":Lcma;, "Lcma<Lgqw;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
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
    .line 1057
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dentryHostUrl"    # Ljava/lang/String;
    .param p2, "previewHostUrl"    # Ljava/lang/String;

    .prologue
    .line 384
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "authFlag"    # Ljava/lang/String;
    .param p4, "conflictType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "mediaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgra;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p4, "listener":Lcma;, "Lcma<Lgra;>;"
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcma;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "isCrypt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1049
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/alibaba/wukong/im/Conversation;)Z
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lcom/alibaba/wukong/im/Conversation;)J
.end method

.method public b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 1200
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 1184
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1263
    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 688
    return-void
.end method

.method public abstract b(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 770
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p4, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Ljava/lang/String;ILcma;)V
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lgqx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p3, "callback":Lcma;, "Lcma<Lgqx;>;"
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "dentryId"    # Ljava/lang/String;
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
    .line 1259
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 1245
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "orgId"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "isPreview"    # Z

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1130
    const/4 v0, -0x1

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public abstract c(Ljava/lang/String;)J
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1228
    .local p4, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;

    .prologue
    .line 760
    return-void
.end method

.method public d(Ljava/lang/String;)I
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authMediaId"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;

    .prologue
    .line 1231
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract d()Z
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1256
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 1060
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract f()V
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 872
    return-object p1
.end method

.method public h()V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 864
    return-object p1
.end method

.method public i()V
    .locals 0

    .prologue
    .line 1123
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 1242
    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 1081
    const/4 v0, 0x0

    return v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 1038
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 1269
    return-void
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public n(Ljava/lang/String;)I
    .locals 1
    .param p1, "spaceTypeServer"    # Ljava/lang/String;

    .prologue
    .line 1114
    const/4 v0, -0x1

    return v0
.end method

.method public o(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public p(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1161
    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1194
    const/4 v0, 0x0

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 1219
    return-void
.end method

.method public s(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method
