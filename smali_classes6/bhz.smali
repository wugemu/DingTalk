.class public abstract Lbhz;
.super Ljava/lang/Object;
.source "AbsDingViewHolder.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Z

.field protected c:I

.field protected d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:J

.field protected f:Lbiz;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhz;->b:Z

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lbhz;->c:I

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbhz;->d:Ljava/util/Set;

    .line 29
    iput-object p1, p0, Lbhz;->a:Landroid/app/Activity;

    .line 30
    return-void
.end method

.method protected static c()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/widget/ListView;)Landroid/view/View;
    .locals 3
    .param p1, "lv"    # Landroid/widget/ListView;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lbhz;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lbhz;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lbhz;->a()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lbhz;->a(Landroid/view/View;Landroid/widget/ListView;)V

    .line 55
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public a(ILbiz;Ljava/util/Set;)V
    .locals 0
    .param p1, "chooseMode"    # I
    .param p2, "dingChooseListener"    # Lbiz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbiz;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, "chooseDingIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput p1, p0, Lbhz;->c:I

    .line 38
    iput-object p2, p0, Lbhz;->f:Lbiz;

    .line 39
    iput-object p3, p0, Lbhz;->d:Ljava/util/Set;

    .line 40
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lbhz;->e:J

    .line 44
    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroid/widget/ListView;)V
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V
    .locals 1
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "filterType"    # I
    .param p3, "withTitle"    # Z

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lbhz;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lbhz;->b()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbhz;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V

    .line 69
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canMultiChoose"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lbhz;->b:Z

    .line 34
    return-void
.end method

.method protected abstract a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
.end method

.method protected abstract b()V
.end method

.method protected abstract b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V
.end method
