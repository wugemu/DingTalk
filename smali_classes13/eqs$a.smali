.class final Leqs$a;
.super Ljava/lang/Object;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field b:Lcom/alibaba/android/search/model/LocalContactModel;

.field c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic d:Leqs;


# direct methods
.method constructor <init>(Leqs;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 2156
    iput-object p1, p0, Leqs$a;->d:Leqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2157
    iput-object p2, p0, Leqs$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2158
    return-void
.end method

.method constructor <init>(Leqs;Lcom/alibaba/android/search/model/LocalContactModel;)V
    .locals 0
    .param p2, "localContactModel"    # Lcom/alibaba/android/search/model/LocalContactModel;

    .prologue
    .line 2160
    iput-object p1, p0, Leqs$a;->d:Leqs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2161
    iput-object p2, p0, Leqs$a;->b:Lcom/alibaba/android/search/model/LocalContactModel;

    .line 2162
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 2169
    new-instance v0, Leqs$a$1;

    iget-object v1, p0, Leqs$a;->d:Leqs;

    iget-object v2, p0, Leqs$a;->d:Leqs;

    invoke-virtual {v2}, Leqs;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leqs$a;->d:Leqs;

    invoke-virtual {v3}, Leqs;->j()Leoe;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Leqs$a$1;-><init>(Leqs$a;Leqq;Ljava/lang/String;Leoe;)V

    .line 2225
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v1, p0, Leqs$a;->d:Leqs;

    iget-object v1, v1, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 2226
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    iget-object v3, p0, Leqs$a;->d:Leqs;

    iget-object v3, v3, Leqs;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 2228
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 2229
    return-void
.end method
