.class final Log$2;
.super Ljava/lang/Object;
.source "OrgMemberCache.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Log;


# direct methods
.method constructor <init>(Log;J)V
    .locals 0
    .param p1, "this$0"    # Log;

    .prologue
    .line 146
    iput-object p1, p0, Log$2;->b:Log;

    iput-wide p2, p0, Log$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    check-cast p1, Ljava/util/List;

    .line 1150
    if-eqz p1, :cond_1

    .line 1151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    .line 1152
    iget-object v2, p0, Log$2;->b:Log;

    iget-wide v4, p0, Log$2;->a:J

    .line 2130
    if-eqz v0, :cond_0

    .line 2131
    iget-object v3, v2, Log;->b:Lof;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->uid:J

    invoke-static {v4, v5, v6, v7}, Log;->b(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lof;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    iget-object v2, v2, Log;->a:Lof;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->uid:J

    invoke-static {v4, v5, v6, v7}, Log;->b(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lof;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1156
    :cond_1
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 1157
    const/4 v1, 0x1

    iput v1, v0, Lcjo$b;->b:I

    .line 1158
    iget-object v1, p0, Log$2;->b:Log;

    .line 3038
    iget-object v1, v1, Log;->d:Lcjo;

    .line 1158
    invoke-interface {v1, v0}, Lcjo;->a(Lcjo$b;)V

    .line 146
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 169
    .local v0, "messageEvent":Lcjo$b;
    const/4 v1, 0x1

    iput v1, v0, Lcjo$b;->b:I

    .line 170
    iget-object v1, p0, Log$2;->b:Log;

    .line 1038
    iget-object v1, v1, Log;->d:Lcjo;

    .line 170
    invoke-interface {v1, v0}, Lcjo;->a(Lcjo$b;)V

    .line 171
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 164
    return-void
.end method
