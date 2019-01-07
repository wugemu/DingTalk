.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;
.super Ljava/lang/Object;
.source "ChatMsgV2Activity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/StringBuilder;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

.field final synthetic e:Lcom/alibaba/wukong/Callback;

.field final synthetic f:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/util/List;ILjava/lang/StringBuilder;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->f:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->a:Ljava/util/List;

    iput p3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->b:I

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->c:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->d:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2900
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2900
    check-cast p1, Lckl;

    .line 3903
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3904
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->f:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->a:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3905
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->f:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->E:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->a:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4039
    iget-object v2, p1, Lckl;->d:Ljava/lang/String;

    .line 3905
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3907
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "@"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 5039
    iget-object v3, p1, Lckl;->d:Ljava/lang/String;

    .line 3907
    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "\u0007"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->f:Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->c:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->b:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->d:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity$57;->e:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgV2Activity;Ljava/util/List;Ljava/lang/StringBuilder;ILcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 2900
    :cond_1
    return-void
.end method
