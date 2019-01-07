.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 3121
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 3125
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 3126
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Confirm retry"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3128
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->b:Z

    if-eqz v1, :cond_1

    .line 3129
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Confirm retry join"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Z

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(ZZ)V

    .line 3139
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->b(I)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    move-result-object v0

    .line 3133
    .local v0, "userWindowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v0, :cond_0

    .line 3134
    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Confirm retry publish"

    invoke-static {v1, v2}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$21;->c:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;Z)V

    goto :goto_0
.end method
