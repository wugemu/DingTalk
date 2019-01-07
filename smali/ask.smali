.class public final Lask;
.super Ljava/lang/Object;
.source "FolderGroupObject.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lask;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lasl;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasl;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lask;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Laqu;)Lask;
    .locals 10
    .param p0, "model"    # Laqu;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28
    if-nez p0, :cond_0

    move-object v0, v3

    .line 47
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lask;

    invoke-direct {v0}, Lask;-><init>()V

    .line 32
    .local v0, "folderGroup":Lask;
    iget-object v5, p0, Laqu;->a:Ljava/lang/String;

    iput-object v5, v0, Lask;->a:Ljava/lang/String;

    .line 33
    iget-object v5, p0, Laqu;->b:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Laqu;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Laqu;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lask;->b:Ljava/util/List;

    .line 35
    iget-object v5, p0, Laqu;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqv;

    .line 1025
    .local v1, "folderModel":Laqv;
    if-nez v1, :cond_2

    move-object v2, v3

    .line 37
    .local v2, "folderObject":Lasl;
    :goto_2
    if-eqz v2, :cond_1

    .line 38
    iget-object v6, v0, Lask;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {v0, v2}, Lask;->b(Lasl;)V

    goto :goto_1

    .line 1029
    .end local v2    # "folderObject":Lasl;
    :cond_2
    new-instance v2, Lasl;

    invoke-direct {v2}, Lasl;-><init>()V

    .line 1030
    iget-object v6, v1, Laqv;->a:Ljava/lang/String;

    iput-object v6, v2, Lasl;->a:Ljava/lang/String;

    .line 1031
    iget-object v6, v1, Laqv;->b:Ljava/lang/String;

    iput-object v6, v2, Lasl;->b:Ljava/lang/String;

    .line 1032
    iget-object v6, v1, Laqv;->c:Ljava/lang/Long;

    .line 1044
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 1032
    iput-wide v6, v2, Lasl;->c:J

    .line 1033
    iget-object v6, v1, Laqv;->d:Ljava/lang/Integer;

    .line 2033
    invoke-static {v6, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 1033
    invoke-static {v6}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->from(I)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v6

    iput-object v6, v2, Lasl;->d:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 1034
    iget-object v6, v1, Laqv;->e:Ljava/lang/String;

    iput-object v6, v2, Lasl;->e:Ljava/lang/String;

    .line 1035
    iget-object v6, v1, Laqv;->f:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v6, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v6

    .line 1035
    iput-boolean v6, v2, Lasl;->f:Z

    .line 1036
    iget-object v6, v1, Laqv;->g:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v6, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v6

    .line 1036
    iput-boolean v6, v2, Lasl;->g:Z

    .line 1037
    iget-object v6, v1, Laqv;->h:Ljava/lang/Integer;

    .line 4033
    invoke-static {v6, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v6

    .line 1037
    iput v6, v2, Lasl;->h:I

    goto :goto_2

    .line 43
    .end local v1    # "folderModel":Laqv;
    :cond_3
    iget-object v3, p0, Laqu;->c:Ljava/lang/Long;

    .line 4044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 43
    iput-wide v6, v0, Lask;->d:J

    .line 44
    iget-object v3, p0, Laqu;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object v3, p0, Laqu;->d:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 44
    if-eqz v3, :cond_5

    :cond_4
    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v0, Lask;->e:Z

    .line 45
    iput-boolean v4, v0, Lask;->f:Z

    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 44
    goto :goto_3
.end method

.method private b(Lasl;)V
    .locals 2
    .param p1, "folderObject"    # Lasl;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lask;->c:Ljava/util/Map;

    .line 5042
    iget-object v1, p1, Lasl;->a:Ljava/lang/String;

    .line 116
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lasl;)V
    .locals 1
    .param p1, "folderObject"    # Lasl;

    .prologue
    .line 63
    iget-object v0, p0, Lask;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lask;->b:Ljava/util/List;

    .line 66
    :cond_0
    iget-object v0, p0, Lask;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-direct {p0, p1}, Lask;->b(Lasl;)V

    .line 68
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 71
    .local p1, "folderObjects":Ljava/util/List;, "Ljava/util/List<Lasl;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lask;->b:Ljava/util/List;

    if-nez v1, :cond_2

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lask;->b:Ljava/util/List;

    .line 77
    :cond_2
    iget-object v1, p0, Lask;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasl;

    .line 79
    .local v0, "folderObject":Lasl;
    invoke-direct {p0, v0}, Lask;->b(Lasl;)V

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 17
    check-cast p1, Lask;

    .line 8137
    if-nez p1, :cond_1

    .line 8144
    :cond_0
    :goto_0
    return v0

    .line 8141
    :cond_1
    iget-wide v2, p0, Lask;->d:J

    .line 9084
    iget-wide v4, p1, Lask;->d:J

    .line 8141
    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 8142
    const/4 v0, -0x1

    goto :goto_0

    .line 8143
    :cond_2
    iget-wide v2, p0, Lask;->d:J

    .line 10084
    iget-wide v4, p1, Lask;->d:J

    .line 8143
    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 8146
    const/4 v0, 0x0

    .line 17
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    instance-of v3, p1, Lask;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 124
    check-cast v0, Lask;

    .line 5084
    .local v0, "that":Lask;
    iget-wide v4, p0, Lask;->d:J

    .line 6084
    iget-wide v6, v0, Lask;->d:J

    .line 126
    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 131
    .line 7084
    iget-wide v0, p0, Lask;->d:J

    .line 8084
    iget-wide v2, p0, Lask;->d:J

    .line 131
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FolderGroupObject{mGroupName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lask;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCollapseDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lask;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsFolded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lask;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
