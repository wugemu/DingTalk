.class public Lark;
.super Ljava/lang/Object;
.source "FolderExtraManager.java"


# static fields
.field private static volatile b:Lark;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lasj;",
            ">;"
        }
    .end annotation
.end field

.field private c:Latw;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lark;->a:Ljava/util/Map;

    .line 28
    new-instance v0, Latx;

    invoke-direct {v0}, Latx;-><init>()V

    iput-object v0, p0, Lark;->c:Latw;

    .line 29
    return-void
.end method

.method public static a()Lark;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lark;->b:Lark;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lark;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lark;->b:Lark;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lark;

    invoke-direct {v0}, Lark;-><init>()V

    sput-object v0, Lark;->b:Lark;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lark;->b:Lark;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)J
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 45
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    .line 1058
    :cond_0
    iget-wide v2, v0, Lasj;->b:J

    goto :goto_0
.end method

.method a(Lasj;)V
    .locals 4
    .param p1, "folderExtra"    # Lasj;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 196
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[FolderExtraManager]save, folderExtra:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lasj;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lark;->a:Ljava/util/Map;

    .line 2050
    iget-object v2, p1, Lasj;->a:Ljava/lang/String;

    .line 202
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->from(Lasj;)Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    move-result-object v0

    .line 204
    .local v0, "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lark;->c:Latw;

    invoke-interface {v1, v0}, Latw;->a(Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;)I

    goto :goto_0
.end method

.method final a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "repeatCreateAnchor"    # J

    .prologue
    .line 96
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[FolderExtraManager]setRepeatCreateAnchor, folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", anchor:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 98
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 1078
    :cond_0
    iput-wide p2, v0, Lasj;->d:J

    .line 102
    invoke-virtual {p0, v0}, Lark;->a(Lasj;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "hasGap"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 65
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[FolderExtraManager]setHasGap, folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", hasGap:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 67
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 1070
    :cond_0
    iput-boolean p2, v0, Lasj;->c:Z

    .line 71
    invoke-virtual {p0, v0}, Lark;->a(Lasj;)V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;J)V
    .locals 8
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 129
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0, p1}, Lark;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 134
    .local v2, "oldNonRepeatStartAnchor":J
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[FolderExtraManager]setNonRepeatStartAnchor, folderId:"

    aput-object v6, v5, v4

    aput-object p1, v5, v1

    const/4 v6, 0x2

    const-string/jumbo v7, ", newNonRepeatStartAnchor:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 135
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", oldNonRepeatStartAnchor="

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 136
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, ", newNonRepeatStartAnchor < oldNonRepeatStartAnchor="

    aput-object v7, v5, v6

    const/4 v6, 0x7

    cmp-long v7, p2, v2

    if-gez v7, :cond_2

    .line 137
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 134
    invoke-static {v5}, Lavy;->a([Ljava/lang/String;)V

    .line 138
    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    .line 1094
    iput-wide p2, v0, Lasj;->f:J

    .line 140
    invoke-virtual {p0, v0}, Lark;->a(Lasj;)V

    goto :goto_0

    :cond_2
    move v1, v4

    .line 136
    goto :goto_1
.end method

.method final b(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "repeatHasMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[FolderExtraManager]setRepeatHasMore, folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", repeatHasMore:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 114
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 1086
    :cond_0
    iput-boolean p2, v0, Lasj;->e:Z

    .line 118
    invoke-virtual {p0, v0}, Lark;->a(Lasj;)V

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 61
    .local v0, "folderExtra":Lasj;
    if-eqz v0, :cond_0

    .line 1066
    iget-boolean v1, v0, Lasj;->c:Z

    .line 61
    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)J
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 124
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    return-wide v2

    .line 1090
    :cond_0
    iget-wide v2, v0, Lasj;->f:J

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;J)V
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "regionStart"    # J

    .prologue
    .line 151
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[FolderExtraManager]setInstanceRegionStart, folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", InstanceRegionStart:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 153
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 1102
    :cond_0
    iput-wide p2, v0, Lasj;->g:J

    .line 158
    invoke-virtual {p0, v0}, Lark;->a(Lasj;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Lasj;
    .locals 5
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 179
    iget-object v2, p0, Lark;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lark;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lasj;

    .line 192
    :goto_0
    return-object v2

    .line 183
    :cond_0
    iget-object v2, p0, Lark;->c:Latw;

    invoke-interface {v2, p1}, Latw;->a(Ljava/lang/String;)Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;

    move-result-object v0

    .line 184
    .local v0, "entryFolderExtra":Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;
    if-eqz v0, :cond_1

    .line 185
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FolderExtraManager] getFolderExtra, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 2033
    :cond_1
    if-nez v0, :cond_3

    .line 2034
    const/4 v1, 0x0

    .line 188
    .local v1, "folderExtra":Lasj;
    :goto_1
    if-nez v1, :cond_2

    .line 189
    new-instance v1, Lasj;

    .end local v1    # "folderExtra":Lasj;
    invoke-direct {v1, p1}, Lasj;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v1    # "folderExtra":Lasj;
    invoke-virtual {p0, v1}, Lark;->a(Lasj;)V

    :cond_2
    move-object v2, v1

    .line 192
    goto :goto_0

    .line 2037
    .end local v1    # "folderExtra":Lasj;
    :cond_3
    new-instance v1, Lasj;

    iget-object v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mFolderId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lasj;-><init>(Ljava/lang/String;)V

    .line 2038
    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mMaxVersion:J

    iput-wide v2, v1, Lasj;->b:J

    .line 2039
    iget-boolean v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mHasGap:Z

    iput-boolean v2, v1, Lasj;->c:Z

    .line 2040
    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mRepeatCreateAnchor:J

    iput-wide v2, v1, Lasj;->d:J

    .line 2041
    iget-boolean v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mRepeatHasMore:Z

    iput-boolean v2, v1, Lasj;->e:Z

    .line 2042
    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mNonRepeatStartAnchor:J

    iput-wide v2, v1, Lasj;->f:J

    .line 2043
    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mInstanceRegionStart:J

    iput-wide v2, v1, Lasj;->g:J

    .line 2044
    iget-wide v2, v0, Lcom/alibaba/android/calendar/db/entry/EntryFolderExtra;->mInstanceRegionEnd:J

    iput-wide v2, v1, Lasj;->h:J

    goto :goto_1
.end method

.method public final d(Ljava/lang/String;J)V
    .locals 4
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "regionEnd"    # J

    .prologue
    .line 168
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[FolderExtraManager]setInstanceRegionEnd, folderId:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", InstanceRegionEnd:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Lark;->d(Ljava/lang/String;)Lasj;

    move-result-object v0

    .line 170
    .local v0, "folderExtra":Lasj;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 1110
    :cond_0
    iput-wide p2, v0, Lasj;->h:J

    .line 175
    invoke-virtual {p0, v0}, Lark;->a(Lasj;)V

    goto :goto_0
.end method

.method final e(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[FolderExtraManager]delete, folderId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lark;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lark;->c:Latw;

    invoke-interface {v0, p1}, Latw;->b(Ljava/lang/String;)I

    .line 214
    return-void
.end method
