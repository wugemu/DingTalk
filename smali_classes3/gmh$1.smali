.class final Lgmh$1;
.super Ljava/lang/Object;
.source "SpaceMenuCoFolderQuitHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmh;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgmb;

.field final synthetic b:Lgmh;


# direct methods
.method constructor <init>(Lgmh;Lgmb;)V
    .locals 0
    .param p1, "this$0"    # Lgmh;

    .prologue
    .line 49
    iput-object p1, p0, Lgmh$1;->b:Lgmh;

    iput-object p2, p0, Lgmh$1;->a:Lgmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lgmh$1;->b:Lgmh;

    iget-object v1, p0, Lgmh$1;->a:Lgmb;

    iget-object v1, v1, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 1118
    iget-object v2, v0, Lgmh;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v2, :cond_0

    .line 1119
    iget-object v2, v0, Lgmh;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, v0, Lgmh;->a:Landroid/content/Context;

    sget v5, Lfzs$h;->loading:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lgmh;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1070
    :goto_0
    new-instance v2, Lgmh$3;

    invoke-direct {v2, v0, v1}, Lgmh$3;-><init>(Lgmh;Ljava/lang/String;)V

    .line 1113
    const-class v3, Lcma;

    iget-object v0, v0, Lgmh;->b:Landroid/app/Activity;

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1145
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lgop$14;

    invoke-direct {v3, v1, v0}, Lgop$14;-><init>(Ljava/lang/String;Lcma;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 53
    return-void

    .line 1121
    :cond_0
    iget-object v2, v0, Lgmh;->c:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method
