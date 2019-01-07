.class public abstract Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
.super Lckb;
.source "MailInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    return-object v0
.end method

.method public static t()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 474
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "currentUid":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "_"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "conversation_send_mail"

    aput-object v4, v2, v3

    .line 476
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v1, v2, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static u()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 484
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "currentUid":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "_"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "conversaton_setting_send_mail"

    aput-object v4, v2, v3

    .line 486
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {v1, v2, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 201
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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public abstract a(JLjava/lang/String;)V
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "orgId"    # J
    .param p3, "staffId"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p5, "showConfirm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 270
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 612
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;I)V
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "type"    # I

    .prologue
    .line 243
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 252
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p5, "subject"    # Ljava/lang/String;
    .param p7, "mailContentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p6, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p8, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 467
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "localId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
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
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # Ljava/lang/String;
    .param p3, "newDistributedMail"    # Ljava/lang/String;
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
    .line 226
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Ljava/util/ArrayList;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tryGotoLogin"    # Z

    .prologue
    .line 220
    return-void
.end method

.method public abstract a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
.end method

.method public abstract a(Lcom/alibaba/wukong/im/Message;IIZ)V
.end method

.method public a(Lfzk;)V
    .locals 0
    .param p1, "listener"    # Lfzk;

    .prologue
    .line 656
    return-void
.end method

.method public a(Lfzl;)V
    .locals 0
    .param p1, "listener"    # Lfzl;

    .prologue
    .line 664
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public abstract a(Ljava/lang/String;IILcma;)V
.end method

.method public a(Ljava/lang/String;J)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "localId"    # J

    .prologue
    .line 673
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Lfzl;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "localUUID"    # Ljava/lang/String;
    .param p3, "extData"    # Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    .param p4, "listener"    # Lfzl;

    .prologue
    .line 681
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mailAppName"    # Ljava/lang/String;
    .param p2, "mailAppKey"    # Ljava/lang/String;
    .param p3, "mailApiUrl"    # Ljava/lang/String;
    .param p4, "mailAuthUrl"    # Ljava/lang/String;
    .param p5, "mailDentryUrl"    # Ljava/lang/String;
    .param p6, "mailFileUrl"    # Ljava/lang/String;
    .param p7, "mailPreviewUrl"    # Ljava/lang/String;
    .param p8, "dingtalkPreviewUrl"    # Ljava/lang/String;

    .prologue
    .line 409
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "toChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()Lcma;
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

.method public b(JLcma;)V
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
    .line 284
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 620
    return-void
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;JLcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "localId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUrl"    # Ljava/lang/String;
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
    .line 626
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "mailServerId"    # Ljava/lang/String;
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
    .line 360
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    return-void
.end method

.method public b(Lfzk;)V
    .locals 0
    .param p1, "listener"    # Lfzk;

    .prologue
    .line 658
    return-void
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public b(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "justAliMail"    # Z

    .prologue
    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 634
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 452
    return-void
.end method

.method public abstract c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mailAddress"    # Ljava/lang/String;

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()V
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 460
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 650
    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public l()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public m()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public p()V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method
