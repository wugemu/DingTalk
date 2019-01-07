.class public final Lasa;
.super Ljava/lang/Object;
.source "CalendarListObject.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lasc;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Laqf;)Lasa;
    .locals 6
    .param p0, "calendarListModel"    # Laqf;

    .prologue
    const/4 v3, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lasa;

    invoke-direct {v0}, Lasa;-><init>()V

    .line 33
    .local v0, "calendarListObject":Lasa;
    iget-object v4, p0, Laqf;->a:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lasa;->a:Ljava/util/List;

    .line 35
    iget-object v4, p0, Laqf;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqg;

    .line 36
    .local v1, "calendarModel":Laqg;
    invoke-static {v1}, Lasc;->a(Laqg;)Lasc;

    move-result-object v2

    .line 37
    .local v2, "calendarObject":Lasc;
    if-eqz v2, :cond_1

    .line 38
    iget-object v5, v0, Lasa;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    .end local v1    # "calendarModel":Laqg;
    .end local v2    # "calendarObject":Lasc;
    :cond_2
    iget-object v4, p0, Laqf;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v4, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 42
    if-lez v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, v0, Lasa;->b:Z

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "CalendarListObject{mCalendars.size="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lasa;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    .line 49
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lasa;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lasa;->a:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
