.class final Laun$21;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lasu;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Laun;


# direct methods
.method constructor <init>(Laun;)V
    .locals 0
    .param p1, "this$0"    # Laun;

    .prologue
    .line 1109
    iput-object p1, p0, Laun$21;->a:Laun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1142
    iget-object v0, p0, Laun$21;->a:Laun;

    .line 2077
    iput-boolean v2, v0, Laun;->C:Z

    .line 1143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[CalendarDrawerContainer] onException. code="

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1109
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1109
    check-cast p1, Ljava/util/List;

    .line 2112
    iget-object v0, p0, Laun$21;->a:Laun;

    .line 3077
    iput-boolean v2, v0, Laun;->C:Z

    .line 2113
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[CalendarDrawerContainer] loadSystemCalendarAsync onSuccess. size="

    aput-object v0, v1, v2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "0"

    .line 2114
    :goto_0
    aput-object v0, v1, v3

    .line 2113
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Laun$21;->a:Laun;

    .line 4077
    iget-object v0, v0, Laun;->t:Ljava/util/List;

    .line 2115
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2116
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2117
    invoke-static {}, Lauo;->a()Lauo;

    move-result-object v0

    invoke-virtual {v0}, Lauo;->d()Ljava/util/List;

    move-result-object v1

    .line 2118
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasu;

    .line 2120
    if-eqz v0, :cond_0

    .line 5032
    iget v4, v0, Lasu;->a:I

    .line 2124
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2125
    new-instance v5, Lava;

    .line 5036
    iget-object v6, v0, Lasu;->b:Ljava/lang/String;

    .line 5040
    iget v0, v0, Lasu;->c:I

    .line 2127
    invoke-direct {v5, v4, v6, v0}, Lava;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2129
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 5048
    iput-boolean v0, v5, Lava;->d:Z

    .line 2130
    sget-object v0, Lcom/alibaba/android/calendar/setting/object/FolderType;->SYSTEM_CALENDAR:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 5064
    iput-object v0, v5, Lava;->g:Lcom/alibaba/android/calendar/setting/object/FolderType;

    .line 2131
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2114
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2133
    :cond_2
    iget-object v0, p0, Laun$21;->a:Laun;

    .line 5077
    iget-object v0, v0, Laun;->t:Ljava/util/List;

    .line 2133
    new-instance v1, Lauy;

    const-wide/16 v4, -0x1

    iget-object v3, p0, Laun$21;->a:Laun;

    .line 6077
    iget-object v3, v3, Laun;->a:Landroid/app/Activity;

    .line 2134
    sget v6, Laow$f;->dt_ding_calendar_setting_group_header_phone:I

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/calendar/setting/object/FolderType;->SYSTEM_CALENDAR:Lcom/alibaba/android/calendar/setting/object/FolderType;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Lauy;-><init>(ZZJLjava/lang/String;Lcom/alibaba/android/calendar/setting/object/FolderType;Ljava/util/List;)V

    .line 2133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2135
    iget-object v0, p0, Laun$21;->a:Laun;

    .line 7077
    iget-object v0, v0, Laun;->t:Ljava/util/List;

    .line 2135
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2136
    iget-object v0, p0, Laun$21;->a:Laun;

    invoke-static {v0}, Laun;->g(Laun;)V

    .line 1109
    :cond_3
    return-void
.end method
