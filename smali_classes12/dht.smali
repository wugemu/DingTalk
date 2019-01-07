.class public final Ldht;
.super Ljava/lang/Object;
.source "NameEvent.java"

# interfaces
.implements Ldhs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldht$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldhs",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Ldht$a;

.field private d:Ldhs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldhs",
            "<",
            "Lckl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldht$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "nameEventCallback"    # Ldht$a;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldht;->b:Z

    .line 38
    iput-object p1, p0, Ldht;->a:Landroid/app/Activity;

    .line 39
    iput-object p2, p0, Ldht;->c:Ldht$a;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldht;->b:Z

    .line 75
    iget-object v0, p0, Ldht;->c:Ldht$a;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Ldht;->d:Ldhs;

    invoke-interface {v0}, Ldhs;->unbindEventBulter()V

    .line 78
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V
    .locals 8
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p6, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldht;->b:Z

    .line 68
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Ldhs;

    iget-object v2, p0, Ldht;->a:Landroid/app/Activity;

    invoke-interface {v0, p0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhs;

    iput-object v0, p0, Ldht;->d:Ldhs;

    .line 69
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v7, p0, Ldht;->d:Ldhs;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 71
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-boolean v0, p0, Ldht;->b:Z

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Ldht;->c:Ldht$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Ldht;->c:Ldht$a;

    invoke-interface {v0, p1, p2}, Ldht$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lckl;

    .line 1044
    iget-boolean v0, p0, Ldht;->b:Z

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Ldht;->c:Ldht$a;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Ldht;->c:Ldht$a;

    invoke-interface {v0, p1}, Ldht$a;->a(Lckl;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final unbindEventBulter()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
