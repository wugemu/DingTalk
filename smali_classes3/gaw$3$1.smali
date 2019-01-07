.class final Lgaw$3$1;
.super Ljava/lang/Object;
.source "AbsFavoriteViewHolder.java"

# interfaces
.implements Lgau$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgaw$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgaw$3;


# direct methods
.method constructor <init>(Lgaw$3;)V
    .locals 0
    .param p1, "this$1"    # Lgaw$3;

    .prologue
    .line 273
    iput-object p1, p0, Lgaw$3$1;->a:Lgaw$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 276
    iget-object v2, p0, Lgaw$3$1;->a:Lgaw$3;

    iget-object v2, v2, Lgaw$3;->c:Lgaw;

    iget-object v2, v2, Lgaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 277
    .local v0, "uidTag":J
    iget-object v2, p0, Lgaw$3$1;->a:Lgaw$3;

    iget-wide v2, v2, Lgaw$3;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 278
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v2, p0, Lgaw$3$1;->a:Lgaw$3;

    iget-object v2, v2, Lgaw$3;->c:Lgaw;

    iget-object v2, v2, Lgaw;->o:Landroid/content/Context;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v3, v2, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 281
    :cond_0
    return-void
.end method
