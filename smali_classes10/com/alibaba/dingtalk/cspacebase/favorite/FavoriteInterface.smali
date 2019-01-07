.class public abstract Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;
.super Lckb;
.source "FavoriteInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;JJLcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "messageId"    # J
    .param p7, "uid"    # J
    .param p9, "videoMessageObject"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    .prologue
    .line 267
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$GeoContent;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/wukong/im/MessageContent$GeoContent;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public a(Landroid/content/Context;Lcky;Lcom/alibaba/wukong/im/MessageContent$VideoContent;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "content"    # Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Lcom/alibaba/wukong/im/MessageContent$VideoContent;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p4, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcky;Ljava/lang/String;JLjava/util/List;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcky;Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Lcky;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "mediaId"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "size"    # J
    .param p9, "hasOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJZ",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p10, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcky;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
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
    .line 71
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;)V"
        }
    .end annotation
.end method
