.class public final Lrf;
.super Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.source "AttendeeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrf$b;,
        Lrf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "attendeeObjectList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lrf;->a:Ljava/util/Map;

    .line 43
    invoke-virtual {p0, p2}, Lrf;->b(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lrf;)Z
    .locals 1
    .param p0, "x0"    # Lrf;

    .prologue
    .line 27
    iget-boolean v0, p0, Lrf;->c:Z

    return v0
.end method

.method static synthetic b(Lrf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lrf;

    .prologue
    .line 27
    iget-object v0, p0, Lrf;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lrf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lrf;

    .prologue
    .line 27
    iget-object v0, p0, Lrf;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 69
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final a(I)Lrs;
    .locals 2
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Lrf$a;

    invoke-direct {v0, v1}, Lrf$a;-><init>(B)V

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrf$b;

    invoke-direct {v0, p0, v1}, Lrf$b;-><init>(Lrf;B)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a()V

    .line 96
    iget-object v0, p0, Lrf;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lrf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iput-object v1, p0, Lrf;->a:Ljava/util/Map;

    .line 101
    :cond_0
    iput-object v1, p0, Lrf;->b:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x2

    return v0
.end method
