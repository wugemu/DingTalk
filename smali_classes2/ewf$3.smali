.class final Lewf$3;
.super Ljava/lang/Object;
.source "SystemCallManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewf;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lewf$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lewf$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lewf$3;->c:Landroid/app/Activity;

    iput-object p4, p0, Lewf$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 147
    check-cast p1, Ljava/util/List;

    .line 1151
    const-wide/16 v2, 0x0

    .line 1152
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1154
    if-eqz v0, :cond_0

    .line 1155
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v4, p0, Lewf$3;->a:Ljava/lang/String;

    iget-object v5, p0, Lewf$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1159
    :goto_0
    iget-object v2, p0, Lewf$3;->c:Landroid/app/Activity;

    iget-object v3, p0, Lewf$3;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;)V

    .line 147
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 169
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewf;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lewf$3;->c:Landroid/app/Activity;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lewf$3;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;)V

    .line 171
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 165
    return-void
.end method
