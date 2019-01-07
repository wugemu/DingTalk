.class final Lgmm$2;
.super Ljava/lang/Object;
.source "SpaceMenuDeleteHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmm;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lgmm;


# direct methods
.method constructor <init>(Lgmm;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgmm;

    .prologue
    .line 104
    iput-object p1, p0, Lgmm$2;->d:Lgmm;

    iput-object p2, p0, Lgmm$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p3, p0, Lgmm$2;->b:Z

    iput-object p4, p0, Lgmm$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 107
    iget-object v2, p0, Lgmm$2;->d:Lgmm;

    iget-object v1, p0, Lgmm$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v3, p0, Lgmm$2;->b:Z

    iget-object v0, p0, Lgmm$2;->c:Landroid/content/Context;

    .line 1119
    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1120
    sget v1, Lfzs$h;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1121
    :goto_0
    return-void

    .line 1123
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1124
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    new-instance v1, Lgmm$3;

    invoke-direct {v1, v2, v0, v3}, Lgmm$3;-><init>(Lgmm;Landroid/content/Context;Z)V

    .line 1149
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 1150
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v2, v1, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1153
    :goto_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lgon;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
