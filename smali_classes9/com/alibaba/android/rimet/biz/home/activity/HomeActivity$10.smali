.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$10;
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
    .line 1137
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$10;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1137
    check-cast p1, Lcry;

    .line 2143
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->ac()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2144
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->t()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    move-result-object v0

    .line 2145
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;->unreadCount:I

    .line 2146
    :goto_0
    if-lez v0, :cond_2

    move v3, v0

    .line 2155
    :goto_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 2156
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "pref_key_recommend_info_first_show_"

    aput-object v6, v5, v2

    aput-object v4, v5, v1

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2157
    invoke-static {v4, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->x()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2159
    :goto_2
    if-eqz p1, :cond_5

    .line 4051
    iget-boolean v2, p1, Lcry;->b:Z

    .line 2159
    if-eqz v2, :cond_5

    .line 4059
    iget-boolean v2, p1, Lcry;->c:Z

    .line 2159
    if-eqz v2, :cond_5

    .line 2160
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 5051
    iget-boolean v4, p1, Lcry;->b:Z

    .line 2161
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5059
    iget-boolean v4, p1, Lcry;->c:Z

    .line 2162
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2163
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2164
    const-string/jumbo v1, "general"

    const-string/jumbo v4, "MineTab"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5107
    iget v1, p1, Lcry;->i:I

    .line 2165
    if-lez v1, :cond_4

    .line 6107
    iget v1, p1, Lcry;->i:I

    .line 2166
    add-int/2addr v3, v1

    .line 7107
    iget v1, p1, Lcry;->i:I

    .line 2167
    add-int/2addr v0, v1

    .line 2174
    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$10;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 1137
    return-void

    :cond_1
    move v0, v2

    .line 2145
    goto/16 :goto_0

    .line 2149
    :cond_2
    if-eqz p1, :cond_6

    .line 3051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 2149
    if-eqz v0, :cond_6

    .line 3059
    iget-boolean v0, p1, Lcry;->c:Z

    .line 2149
    if-eqz v0, :cond_6

    move v0, v1

    move v3, v2

    .line 2150
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 2157
    goto :goto_2

    .line 2169
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 2171
    goto :goto_3

    :cond_5
    if-eqz v1, :cond_0

    .line 2172
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v2

    move v3, v2

    goto/16 :goto_1
.end method
