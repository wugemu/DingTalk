.class public Lglw;
.super Ljava/lang/Object;
.source "PublicAreaFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglw$b;,
        Lglw$a;,
        Lglw$c;
    }
.end annotation


# instance fields
.field private a:Lglw$a;

.field private b:Lglw$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method final a(Lglw$c;)Ljava/util/List;
    .locals 3
    .param p1, "param"    # Lglw$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lglw$c;",
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

    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_1

    .line 35
    :cond_0
    invoke-static {}, Lglp;->a()Ljava/util/List;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 37
    :cond_1
    iget-object v0, p1, Lglw$c;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 1366
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 2043
    iget-object v0, p0, Lglw;->a:Lglw$a;

    if-nez v0, :cond_2

    .line 2044
    new-instance v0, Lglw$a;

    invoke-direct {v0, v2}, Lglw$a;-><init>(B)V

    iput-object v0, p0, Lglw;->a:Lglw$a;

    .line 2046
    :cond_2
    iget-object v0, p0, Lglw;->a:Lglw$a;

    .line 38
    invoke-virtual {v0, p1}, Lglw$a;->a(Lglw$c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2050
    :cond_3
    iget-object v0, p0, Lglw;->b:Lglw$b;

    if-nez v0, :cond_4

    .line 2051
    new-instance v0, Lglw$b;

    invoke-direct {v0, v2}, Lglw$b;-><init>(B)V

    iput-object v0, p0, Lglw;->b:Lglw$b;

    .line 2053
    :cond_4
    iget-object v0, p0, Lglw;->b:Lglw$b;

    .line 39
    invoke-virtual {v0, p1}, Lglw$b;->a(Lglw$c;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
