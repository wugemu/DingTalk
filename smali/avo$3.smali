.class final Lavo$3;
.super Ljava/lang/Object;
.source "CalendarEventUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic c:Landroid/support/v4/app/Fragment;

.field final synthetic d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Landroid/support/v4/app/Fragment;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lavo$3;->a:Ljava/util/List;

    iput-object p2, p0, Lavo$3;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    iput-object p3, p0, Lavo$3;->c:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 132
    if-ltz p2, :cond_0

    iget-object v0, p0, Lavo$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lavo$3;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcng;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lavo$3;->b:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcng;

    .line 140
    .local v7, "menuObject":Lcng;
    iget v0, v7, Lcng;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 141
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lavo$3;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 143
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 144
    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 145
    invoke-virtual {v5}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceIdOrStartTime()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    iget v0, v7, Lcng;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 149
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lavo$3;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 151
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 152
    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lavo$3;->d:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 153
    invoke-virtual {v5}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceIdOrStartTime()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    .line 149
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
