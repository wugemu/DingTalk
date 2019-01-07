.class public final Lfxi$2;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcfs;

.field final synthetic b:Lfxi;


# direct methods
.method public constructor <init>(Lfxi;Lcfs;)V
    .locals 0
    .param p1, "this$0"    # Lfxi;

    .prologue
    .line 82
    iput-object p1, p0, Lfxi$2;->b:Lfxi;

    iput-object p2, p0, Lfxi$2;->a:Lcfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    .line 85
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    iget-object v4, p0, Lfxi$2;->a:Lcfs;

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;-><init>(Lcfs;)V

    .line 86
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 87
    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    .line 89
    :cond_0
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 90
    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    .line 92
    :cond_1
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 93
    iput-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    .line 95
    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "quotaTotal"

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    const-string/jumbo v4, "quotaRemain"

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string/jumbo v4, "update_time"

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string/jumbo v4, "quotaTitle"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v4, "quotaDesc"

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v4, "quotaUsed"

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->used:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string/jumbo v4, "quotaVersion"

    iget v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "listModel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v4

    invoke-virtual {v4}, Lfmz;->g()Lfmw;

    move-result-object v4

    const-string/jumbo v5, "tb_quota_entry"

    const-string/jumbo v6, "quotaType=? AND update_time<?"

    new-array v7, v12, [Ljava/lang/String;

    iget v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    .line 108
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    .line 105
    invoke-interface {v4, v5, v3, v6, v7}, Lfmw;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, "ret":I
    if-lez v2, :cond_3

    .line 111
    iget-object v4, p0, Lfxi$2;->b:Lfxi;

    invoke-static {v4, v1}, Lfxi;->a(Lfxi;Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;)V

    .line 113
    :cond_3
    const-string/jumbo v4, "changeQuota"

    const-string/jumbo v5, "type:%d remain:%d total:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->remain:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->total:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v4, v5, v6}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method
