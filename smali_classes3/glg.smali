.class public final Lglg;
.super Ljava/lang/Object;
.source "SpaceCapacityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglg$a;
    }
.end annotation


# instance fields
.field a:Lglg$a;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lglg$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "byDomain"    # Z
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "spaceCapacityListener"    # Lglg$a;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lglg;->b:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lglg;->c:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lglg;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iput-object p5, p0, Lglg;->a:Lglg$a;

    .line 37
    iput-object p4, p0, Lglg;->d:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lglg;->e:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "byDomain"    # Z
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "spaceCapacityListener"    # Lglg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lglg$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lglg;->c:Ljava/util/List;

    .line 48
    iput-boolean p3, p0, Lglg;->b:Z

    .line 49
    iput-object p5, p0, Lglg;->a:Lglg$a;

    .line 50
    iput-object p4, p0, Lglg;->d:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lglg;->e:Landroid/app/Activity;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lglg;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglg;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lglg;->c:Ljava/util/List;

    iget-boolean v3, p0, Lglg;->b:Z

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lglg$1;

    invoke-direct {v4, p0}, Lglg$1;-><init>(Lglg;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lglg;->e:Landroid/app/Activity;

    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lgon;->a(Ljava/util/List;ZLcma;)V

    goto :goto_0
.end method
