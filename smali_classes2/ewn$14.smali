.class final Lewn$14;
.super Lewj$a;
.source "TeleConfQuickStartCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leuw;

.field final synthetic b:Lewn;


# direct methods
.method constructor <init>(Lewn;Leuw;)V
    .locals 0
    .param p1, "this$0"    # Lewn;

    .prologue
    .line 1280
    iput-object p1, p0, Lewn$14;->b:Lewn;

    iput-object p2, p0, Lewn$14;->a:Leuw;

    invoke-direct {p0}, Lewj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1, "menuId"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 1284
    iget-object v0, p0, Lewn$14;->a:Leuw;

    if-eqz v0, :cond_1

    .line 1285
    iget-object v1, p0, Lewn$14;->a:Leuw;

    .line 2127
    if-eq p1, v2, :cond_2

    iget-object v0, v1, Leuw;->a:Lgws;

    iget-object v0, v0, Lgws;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2129
    iget-object v0, v1, Leuw;->a:Lgws;

    iget-object v0, v0, Lgws;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2130
    iget-object v2, v1, Leuw;->a:Lgws;

    iget-object v0, v1, Leuw;->a:Lgws;

    iget-object v0, v0, Lgws;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lgws;->b:I

    .line 2136
    :cond_0
    :goto_0
    invoke-virtual {v1}, Leuw;->a()V

    .line 2137
    iget-object v0, v1, Leuw;->a:Lgws;

    iget v0, v0, Lgws;->b:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    .line 2138
    const/4 v0, 0x0

    iput-object v0, v1, Leuw;->b:Lcma;

    .line 1287
    :cond_1
    return-void

    .line 2133
    :cond_2
    iget-object v0, v1, Leuw;->a:Lgws;

    iput v2, v0, Lgws;->b:I

    goto :goto_0
.end method
