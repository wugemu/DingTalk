.class final Lcam$a$1;
.super Ljava/lang/Object;
.source "RedPacketsReceiverListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcam$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcam$a;


# direct methods
.method constructor <init>(Lcam$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcam$a;

    .prologue
    .line 83
    iput-object p1, p0, Lcam$a$1;->b:Lcam$a;

    iput-object p2, p0, Lcam$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    iget-object v0, p0, Lcam$a$1;->b:Lcam$a;

    .line 1070
    iget-object v0, v0, Lcam$a;->a:Landroid/widget/TextView;

    .line 86
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcam$a$1;->b:Lcam$a;

    .line 2070
    iget-object v0, v0, Lcam$a;->a:Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcam$a$1;->b:Lcam$a;

    .line 3070
    iget-object v0, v0, Lcam$a;->a:Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcam$a$1;->b:Lcam$a;

    .line 4070
    iget-object v1, v1, Lcam$a;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 86
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcam$a$1;->b:Lcam$a;

    .line 5070
    iget-object v0, v0, Lcam$a;->a:Landroid/widget/TextView;

    .line 87
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcam$a$1;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcam$a$1;->b:Lcam$a;

    .line 6070
    iget-object v4, v4, Lcam$a;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 87
    invoke-static {v4}, Lcam;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    return-void
.end method
