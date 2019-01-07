.class public final Lgwd$1;
.super Ljava/lang/Object;
.source "SystemShareForNetImages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgwd;


# direct methods
.method public constructor <init>(Lgwd;)V
    .locals 0
    .param p1, "this$0"    # Lgwd;

    .prologue
    .line 85
    iput-object p1, p0, Lgwd$1;->a:Lgwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lgwd$1;->a:Lgwd;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v2, p0, Lgwd$1;->a:Lgwd;

    .line 1035
    iget-object v2, v2, Lgwd;->a:Landroid/app/Activity;

    .line 88
    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2035
    iput-object v1, v0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 89
    iget-object v0, p0, Lgwd$1;->a:Lgwd;

    .line 3035
    iget-object v0, v0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 89
    iget-object v1, p0, Lgwd$1;->a:Lgwd;

    .line 4035
    iget-object v1, v1, Lgwd;->a:Landroid/app/Activity;

    .line 89
    sget v2, Lgvn$h;->loading:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lgwd$1;->a:Lgwd;

    .line 5035
    iget-object v0, v0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 91
    iget-object v0, p0, Lgwd$1;->a:Lgwd;

    .line 6035
    iget-object v0, v0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 92
    iget-object v0, p0, Lgwd$1;->a:Lgwd;

    .line 7035
    iget-object v0, v0, Lgwd;->e:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 93
    return-void
.end method
