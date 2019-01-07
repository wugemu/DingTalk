.class public final Lggo;
.super Ljava/lang/Object;
.source "SearchHistorySource.java"


# instance fields
.field public final a:Lggp;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lggn;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lggn;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lggn;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;ILggp;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUid"    # J
    .param p4, "searchModule"    # Ljava/lang/String;
    .param p5, "maxHistorySize"    # I
    .param p6, "observer"    # Lggp;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "searchModule cannot be empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    const/4 v1, 0x5

    iput v1, p0, Lggo;->g:I

    .line 70
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 71
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "com.alibaba.android.almsearch"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 72
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 73
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 74
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lggo;->f:Ljava/lang/String;

    .line 75
    iput-object p6, p0, Lggo;->a:Lggp;

    .line 76
    iget-object v1, p0, Lggo;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lggo;->b:Landroid/content/SharedPreferences;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    iget v2, p0, Lggo;->g:I

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lggo;->c:Ljava/util/HashMap;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lggo;->g:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lggo;->d:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Lggo$1;

    invoke-direct {v1, p0}, Lggo$1;-><init>(Lggo;)V

    iput-object v1, p0, Lggo;->e:Ljava/util/Comparator;

    .line 95
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)V
    .locals 10
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 145
    monitor-enter p0

    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    iget-object v7, p0, Lggo;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 153
    .local v6, "size":I
    iget-object v7, p0, Lggo;->c:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lggn;

    .line 154
    .local v4, "item":Lggn;
    const/4 v3, 0x0

    .line 155
    .local v3, "isShouldResort":Z
    const/4 v2, 0x0

    .line 156
    .local v2, "isDataChanged":Z
    const/4 v5, 0x0

    .line 157
    .local v5, "removedKeyword":Ljava/lang/String;
    const/4 v0, 0x0

    .line 159
    .local v0, "addedItem":Lggn;
    if-eqz v4, :cond_8

    .line 160
    iget-wide v8, v4, Lggn;->b:J

    cmp-long v7, v8, p2

    if-gez v7, :cond_2

    .line 161
    iput-wide p2, v4, Lggn;->b:J

    .line 162
    iget-object v5, v4, Lggn;->a:Ljava/lang/String;

    .line 163
    const/4 v3, 0x1

    .line 164
    const/4 v2, 0x1

    .line 165
    move-object v0, v4

    .line 189
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 190
    iget-object v7, p0, Lggo;->d:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 191
    iget-object v7, p0, Lggo;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Lggo;->e:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    :cond_3
    if-eqz v2, :cond_4

    .line 197
    iget-object v7, p0, Lggo;->a:Lggp;

    if-eqz v7, :cond_4

    .line 198
    iget-object v7, p0, Lggo;->a:Lggp;

    iget-object v8, p0, Lggo;->d:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lggp;->b(Ljava/util/List;)V

    .line 202
    :cond_4
    if-nez v5, :cond_5

    if-eqz v0, :cond_0

    .line 203
    :cond_5
    iget-object v7, p0, Lggo;->b:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 204
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v5, :cond_6

    .line 205
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    :cond_6
    if-eqz v0, :cond_7

    .line 208
    iget-object v7, v0, Lggn;->a:Ljava/lang/String;

    iget-wide v8, v0, Lggn;->b:J

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    :cond_7
    const/16 v7, 0x9

    invoke-static {v7}, Lcms;->b(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    .end local v0    # "addedItem":Lggn;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "isDataChanged":Z
    .end local v3    # "isShouldResort":Z
    .end local v4    # "item":Lggn;
    .end local v5    # "removedKeyword":Ljava/lang/String;
    .end local v6    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 169
    .restart local v0    # "addedItem":Lggn;
    .restart local v2    # "isDataChanged":Z
    .restart local v3    # "isShouldResort":Z
    .restart local v4    # "item":Lggn;
    .restart local v5    # "removedKeyword":Ljava/lang/String;
    .restart local v6    # "size":I
    :cond_8
    if-lez v6, :cond_9

    :try_start_1
    iget v7, p0, Lggo;->g:I

    if-ge v6, v7, :cond_a

    .line 170
    :cond_9
    new-instance v4, Lggn;

    .end local v4    # "item":Lggn;
    invoke-direct {v4}, Lggn;-><init>()V

    .line 171
    .restart local v4    # "item":Lggn;
    iput-object p1, v4, Lggn;->a:Ljava/lang/String;

    .line 172
    iput-wide p2, v4, Lggn;->b:J

    .line 174
    iget-object v7, p0, Lggo;->d:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 183
    :goto_2
    const/4 v2, 0x1

    .line 184
    iget-object v7, p0, Lggo;->c:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object v0, v4

    goto :goto_1

    .line 177
    :cond_a
    iget-object v7, p0, Lggo;->d:Ljava/util/ArrayList;

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "item":Lggn;
    check-cast v4, Lggn;

    .line 178
    .restart local v4    # "item":Lggn;
    iget-object v5, v4, Lggn;->a:Ljava/lang/String;

    .line 179
    iput-object p1, v4, Lggn;->a:Ljava/lang/String;

    .line 180
    iput-wide p2, v4, Lggn;->b:J

    .line 181
    const/4 v3, 0x1

    goto :goto_2

    .line 213
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_b
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
