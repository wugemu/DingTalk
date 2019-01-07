.class public Lgls;
.super Ljava/lang/Object;
.source "CooperationFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgls$b;,
        Lgls$a;,
        Lgls$c;
    }
.end annotation


# instance fields
.field private a:Lgls$a;

.field private b:Lgls$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method final a(Lgls$c;)Ljava/util/List;
    .locals 3
    .param p1, "param"    # Lgls$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgls$c;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 39
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p1, Lgls$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 1366
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 2047
    iget-object v0, p0, Lgls;->a:Lgls$a;

    if-nez v0, :cond_2

    .line 2048
    new-instance v0, Lgls$a;

    invoke-direct {v0, v2}, Lgls$a;-><init>(B)V

    iput-object v0, p0, Lgls;->a:Lgls$a;

    .line 2050
    :cond_2
    iget-object v0, p0, Lgls;->a:Lgls$a;

    .line 42
    invoke-virtual {v0, p1}, Lgls$a;->a(Lgls$c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2054
    :cond_3
    iget-object v0, p0, Lgls;->b:Lgls$b;

    if-nez v0, :cond_4

    .line 2055
    new-instance v0, Lgls$b;

    invoke-direct {v0, v2}, Lgls$b;-><init>(B)V

    iput-object v0, p0, Lgls;->b:Lgls$b;

    .line 2057
    :cond_4
    iget-object v0, p0, Lgls;->b:Lgls$b;

    .line 43
    invoke-virtual {v0, p1}, Lgls$b;->a(Lgls$c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
