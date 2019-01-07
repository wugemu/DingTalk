.class final Lfcg$c$4;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

.field final synthetic b:Lfcg$c;


# direct methods
.method constructor <init>(Lfcg$c;Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)V
    .locals 0
    .param p1, "this$1"    # Lfcg$c;

    .prologue
    .line 455
    iput-object p1, p0, Lfcg$c$4;->b:Lfcg$c;

    iput-object p2, p0, Lfcg$c$4;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 455
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1458
    iget-object v0, p0, Lfcg$c$4;->b:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1459
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1460
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1461
    iget-object v2, p0, Lfcg$c$4;->a:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lfcg$c$4;->b:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method
