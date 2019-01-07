.class final Lflv$1;
.super Ljava/lang/Object;
.source "MatchContactThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflv;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lflv;


# direct methods
.method constructor <init>(Lflv;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lflv;

    .prologue
    .line 76
    iput-object p1, p0, Lflv$1;->c:Lflv;

    iput-boolean p2, p0, Lflv$1;->a:Z

    iput-boolean p3, p0, Lflv$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 79
    iget-object v2, p0, Lflv$1;->c:Lflv;

    .line 1042
    iget-boolean v2, v2, Lflv;->c:Z

    .line 79
    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lflv$1;->c:Lflv;

    .line 2042
    iput-boolean v6, v2, Lflv;->c:Z

    .line 83
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has_copy_local_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, "isCopyOver":Z
    iget-object v2, p0, Lflv$1;->c:Lflv;

    .line 3042
    iget-object v2, v2, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    .line 86
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->clear()V

    .line 87
    if-eqz v0, :cond_2

    .line 88
    iget-object v2, p0, Lflv$1;->c:Lflv;

    .line 4042
    iget-object v2, v2, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    .line 89
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 88
    invoke-static {v3, v6}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_1
    :goto_1
    iget-object v2, p0, Lflv$1;->c:Lflv;

    .line 6042
    iget-object v2, v2, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    .line 98
    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    iget-boolean v2, p0, Lflv$1;->a:Z

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lflv$1;->c:Lflv;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, p0, Lflv$1;->b:Z

    invoke-static {v2, v3, v4}, Lflv;->a(Lflv;Ljava/util/List;Z)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v1, :cond_1

    .line 94
    iget-object v2, p0, Lflv$1;->c:Lflv;

    .line 5042
    iget-object v2, v2, Lflv;->a:Lcom/alibaba/android/user/contact/utils/CopyArrayList;

    .line 94
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/contact/utils/CopyArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 102
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_3
    iget-object v2, p0, Lflv$1;->c:Lflv;

    const/4 v3, 0x0

    .line 7042
    iput-boolean v3, v2, Lflv;->c:Z

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object v2, p0, Lflv$1;->c:Lflv;

    iget-boolean v3, p0, Lflv$1;->b:Z

    invoke-static {v2, v3}, Lflv;->a(Lflv;Z)V

    goto/16 :goto_0
.end method
