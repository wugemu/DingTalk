.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1180
    check-cast p1, Lcry;

    .line 2184
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->u()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v0

    .line 2189
    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 2190
    :goto_1
    const-string/jumbo v2, "pref_key_is_show_contact_admin_reddot"

    invoke-static {v2, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 2192
    if-lez v0, :cond_2

    .line 2193
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v1, v0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(II)V

    .line 2195
    :goto_2
    return-void

    .line 2187
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->t()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2189
    goto :goto_1

    .line 2194
    :cond_2
    if-eqz p1, :cond_3

    .line 3051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 2194
    if-eqz v0, :cond_3

    .line 3059
    iget-boolean v0, p1, Lcry;->c:Z

    .line 2194
    if-nez v0, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    .line 2195
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(II)V

    goto :goto_2

    .line 2197
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$11;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(II)V

    goto :goto_2
.end method
