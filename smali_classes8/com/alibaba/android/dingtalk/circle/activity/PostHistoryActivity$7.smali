.class final Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;
.super Ljava/lang/Object;
.source "PostHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 193
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->f(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-static {}, Lbpd;->e()Lbpd;

    move-result-object v5

    const-string/jumbo v6, "SELECT COUNT(*) FROM tb_circle_notice_data"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lbpd;->a(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 198
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x14

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->c(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    .line 206
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 207
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->g(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 208
    invoke-static {}, Lbpd;->e()Lbpd;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "create_at DESC"

    invoke-virtual {v4, v5, v6}, Lbpd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 220
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .local v0, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 225
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    .line 226
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4, v8, v9}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;J)V

    goto :goto_0

    .line 210
    .end local v0    # "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    :cond_3
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    .line 211
    .local v2, "pool":Lbox;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 212
    .local v1, "params":[Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->f(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 213
    const/4 v4, 0x1

    const-string/jumbo v5, "20"

    aput-object v5, v1, v4

    .line 214
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->g(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 215
    invoke-static {}, Lbpd;->e()Lbpd;

    move-result-object v4

    const-string/jumbo v5, "SELECT * FROM tb_circle_notice_data WHERE create_at < ?  ORDER BY create_at DESC LIMIT ? OFFSET ?"

    invoke-virtual {v4, v5, v1}, Lbpd;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 217
    .restart local v0    # "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-virtual {v2, v1}, Lbox;->release(Ljava/lang/Object;)V

    goto :goto_1

    .line 230
    .end local v1    # "params":[Ljava/lang/String;
    .end local v2    # "pool":Lbox;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->g(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;I)I

    .line 232
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 233
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_5

    .line 234
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 242
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Ljava/util/List;)V

    .line 244
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 245
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    goto/16 :goto_0

    .line 236
    .restart local v0    # "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->h(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 239
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V

    goto :goto_2
.end method
