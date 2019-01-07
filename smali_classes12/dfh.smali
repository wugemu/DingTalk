.class public final Ldfh;
.super Ljava/lang/Object;
.source "RedpacketPresenter.java"

# interfaces
.implements Ldfg$a;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field b:Ldfg$b;

.field c:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldfg$b;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Ldfg$b;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ldfh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 34
    iput-object p2, p0, Ldfh;->b:Ldfg$b;

    .line 35
    iput-object p3, p0, Ldfh;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 37
    iget-object v0, p0, Ldfh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "activity is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Ldfh;->b:Ldfg$b;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iget-object v0, p0, Ldfh;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Conversation is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    iget-object v0, p0, Ldfh;->b:Ldfg$b;

    invoke-interface {v0, p0}, Ldfg$b;->setPresenter(Lcjd;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    .line 55
    .local v0, "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pre_key_chat_festival_redpacket_clicked_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 57
    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 60
    :cond_0
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    .line 61
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Ldfh$1;

    invoke-direct {v4, p0}, Ldfh$1;-><init>(Ldfh;)V

    const-class v5, Lcma;

    iget-object v6, p0, Ldfh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 60
    invoke-virtual {v3, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->b(Lcma;)Z

    move-result v1

    .line 91
    .local v1, "showLoading":Z
    if-eqz v1, :cond_1

    .line 92
    iget-object v2, p0, Ldfh;->b:Ldfg$b;

    invoke-interface {v2}, Ldfg$b;->b()V

    .line 94
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v0

    iget-object v1, p0, Ldfh;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Ldfh;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 99
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
