.class public abstract Lgly;
.super Ljava/lang/Object;
.source "SpaceMenuHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lgmb;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paramModel"    # Lgmb;
    .param p2, "checkContextActivity"    # Z

    .prologue
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    if-eqz p2, :cond_2

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 45
    :cond_2
    iget-object v1, p1, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    .prologue
    .line 34
    return-void
.end method

.method public a(Landroid/content/Context;Lgmb;Ljava/lang/Object;Lgqm;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;
    .param p4, "menuObject"    # Lgqm;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lgly;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
