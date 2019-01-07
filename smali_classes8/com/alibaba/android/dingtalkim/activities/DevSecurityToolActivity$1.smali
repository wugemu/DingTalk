.class final Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;
.super Ljava/lang/Object;
.source "DevSecurityToolActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 147
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DevSecurityToolActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "load message failed. error:"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    sget v1, Lctk$i;->msg_forward_failed:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 1056
    iget-object v3, v3, Lcid;->c:Lcmy;

    .line 149
    invoke-interface {v3, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1095
    if-nez p1, :cond_0

    .line 1096
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DevSecurityToolActivity"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "load conversation success. conversation=null"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :goto_0
    return-void

    .line 1100
    :cond_0
    const-string/jumbo v0, "crypto"

    const-string/jumbo v1, "DevSecurityToolActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "load conversation success. cId="

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->a:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity$1;->b:Lcom/alibaba/android/dingtalkim/activities/DevSecurityToolActivity;

    invoke-interface {v0, v1, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {p1, v2, v3, v0}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
