.class final Lgdi$4;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdi;
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
.field final synthetic a:Lgdi;

.field final synthetic b:Lgnu;

.field final synthetic c:Lgdi;


# direct methods
.method constructor <init>(Lgdi;Lgdi;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgdi;

    .prologue
    .line 294
    iput-object p1, p0, Lgdi$4;->c:Lgdi;

    iput-object p2, p0, Lgdi$4;->a:Lgdi;

    iput-object p3, p0, Lgdi$4;->b:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 294
    check-cast p1, Lgoh;

    .line 1297
    if-eqz p1, :cond_1

    .line 1301
    iget-object v0, p0, Lgdi$4;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-wide v2, p1, Lgoh;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1302
    invoke-virtual {p1}, Lgoh;->a()Ljava/lang/String;

    move-result-object v0

    .line 1304
    iget-object v1, p0, Lgdi$4;->a:Lgdi;

    iget-object v1, v1, Lgdi;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v1, p0, Lgdi$4;->a:Lgdi;

    iget-object v1, v1, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p1, Lgoh;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-boolean v1, p1, Lgoh;->f:Z

    if-nez v1, :cond_0

    .line 1308
    iget-object v1, p0, Lgdi$4;->a:Lgdi;

    iget-object v1, v1, Lgdi;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 1311
    :cond_0
    iget-object v1, p0, Lgdi$4;->b:Lgnu;

    .line 2207
    iput-object v0, v1, Lgnu;->b:Ljava/lang/String;

    .line 1312
    iget-object v0, p0, Lgdi$4;->b:Lgnu;

    iget-object v1, p1, Lgoh;->e:Ljava/lang/String;

    .line 2215
    iput-object v1, v0, Lgnu;->c:Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lgdi$4;->b:Lgnu;

    iget-boolean v1, p1, Lgoh;->f:Z

    .line 2255
    iput-boolean v1, v0, Lgnu;->h:Z

    .line 1314
    iget-object v0, p0, Lgdi$4;->b:Lgnu;

    .line 2263
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu;->i:Z

    .line 294
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
    .line 325
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "AclMemberViewHolder"

    const-string/jumbo v2, "AclMemberViewHolder initUserInfo"

    const/4 v3, 0x0

    .line 326
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 321
    return-void
.end method
