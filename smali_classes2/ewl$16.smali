.class final Lewl$16;
.super Ljava/lang/Object;
.source "TeleConfPhoneHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V
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
    .line 1374
    iput-object p1, p0, Lewl$16;->f:Lewl;

    iput-object p2, p0, Lewl$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object p3, p0, Lewl$16;->b:Ljava/lang/String;

    iput-object p4, p0, Lewl$16;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lewl$16;->d:Z

    iput-object p6, p0, Lewl$16;->e:Lewl$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, "userMobileObject":Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;
    iget-object v1, p0, Lewl$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lewl$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1380
    iget-object v1, p0, Lewl$16;->f:Lewl;

    iget-object v2, p0, Lewl$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, p0, Lewl$16;->b:Ljava/lang/String;

    iget-object v4, p0, Lewl$16;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lewl$16;->d:Z

    invoke-static {v1, v2, v3, v4, v5}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 1381
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1382
    :cond_0
    iget-object v1, p0, Lewl$16;->f:Lewl;

    iget-object v2, p0, Lewl$16;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v1, v2}, Lewl;->a(Lewl;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    move-result-object v0

    .line 1385
    :cond_1
    iget-object v1, p0, Lewl$16;->e:Lewl$c;

    if-eqz v1, :cond_2

    .line 1386
    iget-object v1, p0, Lewl$16;->e:Lewl$c;

    invoke-interface {v1, v0}, Lewl$c;->a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V

    .line 1388
    :cond_2
    return-void
.end method
