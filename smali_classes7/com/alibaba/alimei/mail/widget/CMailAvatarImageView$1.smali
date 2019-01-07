.class final Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;
.super Ljava/lang/Object;
.source "CMailAvatarImageView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->b:J

    iput-object p5, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 225
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1228
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    sget v1, Laxo$f;->mail:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1229
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1230
    const-string/jumbo v1, "CMailAvatarImageView"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "getUserProfile callback success, but do not show avatar for mailTag: "

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    const-string/jumbo v0, ", email: "

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    aput-object v0, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_0
    return-void

    .line 1234
    :cond_0
    if-eqz p1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2167
    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 1237
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "can not obtain user from rpc for email: "

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    aput-object v1, v0, v6

    const-string/jumbo v1, ", with uid: "

    aput-object v1, v0, v7

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    const-string/jumbo v1, "CMailAvatarImageView"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3167
    invoke-virtual {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->d:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1167
    invoke-virtual {v1, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 251
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "obtain user from rpc exception for email: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", with uid: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView$1;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "sb":Ljava/lang/String;
    const-string/jumbo v1, "CMailAvatarImageView"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 246
    return-void
.end method
