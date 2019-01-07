.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
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
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ILjava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->a:I

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->b:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->d:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1872
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1872
    check-cast p1, Lckl;

    .line 2875
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->l(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3039
    iget-object v2, p1, Lckl;->d:Ljava/lang/String;

    .line 2877
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2879
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "@"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4039
    iget-object v3, p1, Lckl;->d:Ljava/lang/String;

    .line 2879
    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "\u0007"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2880
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->e:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->b:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->c:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$78;->d:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 1872
    :cond_1
    return-void
.end method
