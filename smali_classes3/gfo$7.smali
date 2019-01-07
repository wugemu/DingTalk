.class final Lgfo$7;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfo;
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
        "Lgoh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lgfo;

.field final synthetic c:Lgnu;

.field final synthetic d:Lgfo;


# direct methods
.method constructor <init>(Lgfo;Landroid/content/Context;Lgfo;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgfo;

    .prologue
    .line 498
    iput-object p1, p0, Lgfo$7;->d:Lgfo;

    iput-object p2, p0, Lgfo$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lgfo$7;->b:Lgfo;

    iput-object p4, p0, Lgfo$7;->c:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 498
    check-cast p1, Lgoh;

    .line 1502
    iget-object v0, p0, Lgfo$7;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    if-eqz p1, :cond_1

    .line 1510
    iget-object v0, p0, Lgfo$7;->b:Lgfo;

    iget-object v0, v0, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-wide v2, p1, Lgoh;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    invoke-virtual {p1}, Lgoh;->a()Ljava/lang/String;

    move-result-object v0

    .line 1513
    iget-object v1, p0, Lgfo$7;->b:Lgfo;

    iget-object v1, v1, Lgfo;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1514
    iget-object v1, p0, Lgfo$7;->b:Lgfo;

    iget-object v1, v1, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p1, Lgoh;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-boolean v1, p1, Lgoh;->f:Z

    if-nez v1, :cond_0

    .line 1517
    iget-object v1, p0, Lgfo$7;->b:Lgfo;

    iget-object v1, v1, Lgfo;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setShowInactiveMask(Z)V

    .line 1520
    :cond_0
    iget-object v1, p0, Lgfo$7;->c:Lgnu;

    .line 2207
    iput-object v0, v1, Lgnu;->b:Ljava/lang/String;

    .line 1521
    iget-object v0, p0, Lgfo$7;->c:Lgnu;

    iget-object v1, p1, Lgoh;->e:Ljava/lang/String;

    .line 2215
    iput-object v1, v0, Lgnu;->c:Ljava/lang/String;

    .line 1522
    iget-object v0, p0, Lgfo$7;->c:Lgnu;

    iget-boolean v1, p1, Lgoh;->f:Z

    .line 2255
    iput-boolean v1, v0, Lgnu;->h:Z

    .line 1523
    iget-object v0, p0, Lgfo$7;->c:Lgnu;

    .line 2263
    iput-boolean v4, v0, Lgnu;->i:Z

    .line 498
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 534
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "PermissionSettingListViewHolder"

    const-string/jumbo v2, "AclMemberViewHolder initUserInfo"

    const/4 v3, 0x0

    .line 535
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 530
    return-void
.end method
