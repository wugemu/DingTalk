.class final Lewl$19;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Z

.field final synthetic c:Lewl$c;

.field final synthetic d:Lewl;


# direct methods
.method constructor <init>(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1503
    iput-object p1, p0, Lewl$19;->d:Lewl;

    iput-object p2, p0, Lewl$19;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-boolean p3, p0, Lewl$19;->b:Z

    iput-object p4, p0, Lewl$19;->c:Lewl$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1506
    iget-object v1, p0, Lewl$19;->d:Lewl;

    iget-object v2, p0, Lewl$19;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v1, v2}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 1507
    .local v0, "mobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lewl$19;->b:Z

    if-eqz v1, :cond_1

    .line 1508
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lewl$19;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    new-instance v4, Lewl$19$1;

    invoke-direct {v4, p0}, Lewl$19$1;-><init>(Lewl$19;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(JLcma;)V

    .line 1534
    iget-object v1, p0, Lewl$19;->d:Lewl;

    iget-object v2, p0, Lewl$19;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v1, v2, v5, v6}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    .line 1544
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-object v1, p0, Lewl$19;->c:Lewl$c;

    if-eqz v1, :cond_2

    .line 1537
    iget-object v1, p0, Lewl$19;->c:Lewl$c;

    invoke-interface {v1, v0}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1540
    :cond_2
    iget-boolean v1, p0, Lewl$19;->b:Z

    if-eqz v1, :cond_0

    .line 1541
    iget-object v1, p0, Lewl$19;->d:Lewl;

    iget-object v2, p0, Lewl$19;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v1, v2, v5, v6}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    goto :goto_0
.end method
