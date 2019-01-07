.class final Lejp$5;
.super Ljava/lang/Object;
.source "HomeAttendanceManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lejp;


# direct methods
.method constructor <init>(Lejp;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 122
    iput-object p1, p0, Lejp$5;->c:Lejp;

    iput-object p2, p0, Lejp$5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lejp$5;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v3, p0, Lejp$5;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "orgMicroAPPObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    iget-object v3, p0, Lejp$5;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;

    .line 130
    .local v0, "corp":Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;
    if-eqz v0, :cond_2

    .line 133
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;->corpId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v1

    .line 134
    .local v1, "orgMicroAPP":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v1, :cond_2

    .line 137
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v0    # "corp":Lcom/alibaba/dingtalk/runtimebase/object/CheckInRemindCorpObject;
    .end local v1    # "orgMicroAPP":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lejp$5$1;

    invoke-direct {v4, p0, v2}, Lejp$5$1;-><init>(Lejp$5;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
