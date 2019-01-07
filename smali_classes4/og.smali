.class public final Log;
.super Ljava/lang/Object;
.source "OrgMemberCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log$a;
    }
.end annotation


# instance fields
.field public a:Lof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lof",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lof",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcjo;

.field e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lof;

    invoke-direct {v0, v1}, Lof;-><init>(I)V

    iput-object v0, p0, Log;->a:Lof;

    .line 53
    new-instance v0, Lof;

    invoke-direct {v0, v1}, Lof;-><init>(I)V

    iput-object v0, p0, Log;->b:Lof;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Log;->c:Ljava/util/Map;

    .line 58
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Log;->d:Lcjo;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Log;->e:Z

    .line 74
    new-instance v0, Log$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Log$1;-><init>(Log;Landroid/os/Looper;)V

    iput-object v0, p0, Log;->f:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Log;-><init>()V

    return-void
.end method

.method static b(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "orgId"    # J
    .param p2, "uid"    # J

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    .locals 9
    .param p1, "oid"    # J
    .param p3, "uid"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 103
    monitor-enter p0

    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    cmp-long v4, p3, v6

    if-gtz v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 122
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    .line 107
    :cond_2
    :try_start_0
    iget-object v4, p0, Log;->b:Lof;

    invoke-static {p1, p2, p3, p4}, Log;->b(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lof;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    .line 108
    .local v2, "membersViewObject":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    iget-object v4, p0, Log;->a:Lof;

    invoke-static {p1, p2, p3, p4}, Log;->b(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lof;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 110
    .local v0, "failTime":Ljava/lang/Long;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 115
    :cond_3
    iget-object v4, p0, Log;->c:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-boolean v4, p0, Log;->e:Z

    if-nez v4, :cond_4

    .line 118
    const/4 v4, 0x1

    iput-boolean v4, p0, Log;->e:Z

    .line 119
    iget-object v4, p0, Log;->f:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, "m":Landroid/os/Message;
    iget-object v4, p0, Log;->f:Landroid/os/Handler;

    const-wide/16 v6, 0x320

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "m":Landroid/os/Message;
    :cond_4
    move-object v2, v3

    .line 122
    goto :goto_0

    .line 103
    .end local v0    # "failTime":Ljava/lang/Long;
    .end local v2    # "membersViewObject":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
