.class final Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5$1;
.super Ljava/lang/Object;
.source "CMailNewAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailNewAccountFragment$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v1, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 159
    return-void
.end method
