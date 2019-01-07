.class final Levp$6;
.super Ljava/lang/Object;
.source "TeleVideoMemberListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

.field final synthetic c:Levp;


# direct methods
.method constructor <init>(Levp;ILcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V
    .locals 0
    .param p1, "this$0"    # Levp;

    .prologue
    .line 272
    iput-object p1, p0, Levp$6;->c:Levp;

    iput p2, p0, Levp$6;->a:I

    iput-object p3, p0, Levp$6;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 275
    invoke-static {}, Levp;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Delete member "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Levp$6;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "videoconf_conf_memlist_kickout_confirm_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Levp$6;->c:Levp;

    invoke-static {v0}, Levp;->c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    iget-object v1, p0, Levp$6;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 278
    return-void
.end method
