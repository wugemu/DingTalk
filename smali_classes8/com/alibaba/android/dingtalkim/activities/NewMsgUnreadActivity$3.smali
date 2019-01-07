.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$3;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x7b

    const/4 v3, 0x1

    const/16 v5, 0x23

    .line 1102
    check-cast p1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    check-cast p2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    .line 2105
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    if-eqz v0, :cond_8

    .line 2107
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->b:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 2142
    :goto_0
    return v0

    .line 2111
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    .line 2112
    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    .line 2113
    if-eqz v0, :cond_2

    if-eqz v2, :cond_8

    .line 2115
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    move v0, v3

    .line 2116
    goto :goto_0

    .line 2120
    :cond_3
    iget-object v4, v0, Ldqw;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2121
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 2125
    :goto_1
    invoke-static {v0, v5}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 2126
    if-ne v0, v5, :cond_4

    move v0, v1

    .line 2130
    :cond_4
    iget-object v4, v2, Ldqw;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2131
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-object v2, v2, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 2135
    :goto_2
    invoke-static {v2, v5}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v2

    .line 2136
    if-ne v2, v5, :cond_9

    .line 2139
    :goto_3
    if-ne v0, v1, :cond_7

    .line 2140
    const/4 v0, 0x0

    goto :goto_0

    .line 2123
    :cond_5
    iget-object v0, v0, Ldqw;->c:Ljava/lang/String;

    goto :goto_1

    .line 2133
    :cond_6
    iget-object v2, v2, Ldqw;->c:Ljava/lang/String;

    goto :goto_2

    .line 2142
    :cond_7
    if-le v0, v1, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    const/4 v0, -0x1

    .line 1102
    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_3
.end method
