.class final Lewl$21;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lewl$c;

.field final synthetic f:Lewl;


# direct methods
.method constructor <init>(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V
    .locals 0
    .param p1, "this$0"    # Lewl;

    .prologue
    .line 1654
    iput-object p1, p0, Lewl$21;->f:Lewl;

    iput-object p2, p0, Lewl$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewl$21;->b:Ljava/lang/String;

    iput-object p4, p0, Lewl$21;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lewl$21;->d:Z

    iput-object p6, p0, Lewl$21;->e:Lewl$c;

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
    .line 1657
    iget-object v2, p0, Lewl$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lewl$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1658
    const/4 v0, 0x0

    .line 1660
    .local v0, "hasMobile":Z
    iget-object v2, p0, Lewl$21;->f:Lewl;

    iget-object v3, p0, Lewl$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, p0, Lewl$21;->b:Ljava/lang/String;

    iget-object v5, p0, Lewl$21;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lewl$21;->d:Z

    invoke-static {v2, v3, v4, v5, v6}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v1

    .line 1661
    .local v1, "mobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1662
    const/4 v0, 0x1

    .line 1663
    iget-object v2, p0, Lewl$21;->e:Lewl$c;

    if-eqz v2, :cond_0

    .line 1664
    iget-object v2, p0, Lewl$21;->e:Lewl$c;

    invoke-interface {v2, v1}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1668
    :cond_0
    iget-object v3, p0, Lewl$21;->f:Lewl;

    iget-object v4, p0, Lewl$21;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lewl$21;->e:Lewl$c;

    invoke-static {v3, v4, v2, v5}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZLewl$c;)V

    .line 1674
    .end local v0    # "hasMobile":Z
    .end local v1    # "mobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    :cond_1
    :goto_1
    return-void

    .line 1668
    .restart local v0    # "hasMobile":Z
    .restart local v1    # "mobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1670
    .end local v0    # "hasMobile":Z
    .end local v1    # "mobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    :cond_3
    iget-object v2, p0, Lewl$21;->e:Lewl$c;

    if-eqz v2, :cond_1

    .line 1671
    iget-object v2, p0, Lewl$21;->e:Lewl$c;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    goto :goto_1
.end method
