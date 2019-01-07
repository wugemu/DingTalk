.class final Lgna$1;
.super Ljava/lang/Object;
.source "SpaceMenuLocalEditHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgna;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lgna;


# direct methods
.method constructor <init>(Lgna;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lgna;

    .prologue
    .line 62
    iput-object p1, p0, Lgna$1;->b:Lgna;

    iput-object p2, p0, Lgna$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    .line 1065
    iget-object v0, p0, Lgna$1;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgna$1;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lgna$1;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->finish()V

    .line 62
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 77
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceMenuLocalEditHandler"

    const-string/jumbo v2, "SpaceMenuLocalEditHandler"

    const/4 v3, 0x0

    .line 78
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 73
    return-void
.end method
