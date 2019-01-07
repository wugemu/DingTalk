.class public final Lgab;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceRecentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lgab;->b:Landroid/app/Activity;

    .line 47
    iget-object v0, p0, Lgab;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lgab;->b:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lgab;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 50
    :cond_0
    iput-object p2, p0, Lgab;->d:Landroid/os/Handler;

    .line 51
    iput-object p3, p0, Lgab;->a:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lgab;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Lgab;

    .prologue
    .line 38
    iget-object v0, p0, Lgab;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic b(Lgab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgab;

    .prologue
    .line 38
    iget-object v0, p0, Lgab;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lgab;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lgab;

    .prologue
    .line 38
    iget-object v0, p0, Lgab;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lgab;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 62
    .local v1, "operationModel":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    invoke-static {v1}, Lggl;->a(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)I

    move-result v0

    .line 63
    .local v0, "itemViewType":I
    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    invoke-virtual/range {p0 .. p1}, Lgab;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .line 69
    .local v4, "model":Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    invoke-static {v4}, Lggl;->a(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)I

    move-result v12

    .line 70
    .local v12, "viewType":I
    const/4 v11, 0x0

    .line 71
    .local v11, "viewHolder":Lggg;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lggg;

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lggg;

    .line 73
    .local v10, "holder":Lggg;
    iget v2, v10, Lggg;->a:I

    if-ne v2, v12, :cond_3

    .line 74
    move-object v11, v10

    .line 80
    .end local v10    # "holder":Lggg;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-nez v11, :cond_2

    .line 81
    :cond_1
    iget-object v2, p0, Lgab;->b:Landroid/app/Activity;

    .line 1085
    packed-switch v12, :pswitch_data_0

    .line 1093
    new-instance v11, Lggh;

    .end local v11    # "viewHolder":Lggg;
    invoke-direct {v11, v2}, Lggh;-><init>(Landroid/app/Activity;)V

    .line 82
    .restart local v11    # "viewHolder":Lggg;
    :goto_1
    iget-object v2, p0, Lgab;->m:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lggg;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 83
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :cond_2
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_4

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v9, p3

    .line 86
    .local v9, "absListView":Landroid/widget/AbsListView;
    :goto_2
    move-object v5, v11

    .line 87
    .local v5, "recentViewHolder":Lggg;
    iget-wide v6, v4, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    .line 88
    .local v6, "localId":J
    iput-wide v6, v5, Lggg;->e:J

    .line 89
    iget-boolean v2, v4, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->hasCompleteLoaded:Z

    if-eqz v2, :cond_5

    .line 90
    iget-object v2, p0, Lgab;->a:Ljava/lang/String;

    iget-object v3, p0, Lgab;->d:Landroid/os/Handler;

    invoke-virtual {v5, v2, v3, v4, v9}, Lggg;->a(Ljava/lang/String;Landroid/os/Handler;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V

    .line 109
    :goto_3
    return-object p2

    .line 76
    .end local v5    # "recentViewHolder":Lggg;
    .end local v6    # "localId":J
    .end local v9    # "absListView":Landroid/widget/AbsListView;
    .restart local v10    # "holder":Lggg;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    const/16 p2, 0x0

    goto :goto_0

    .line 1087
    .end local v10    # "holder":Lggg;
    :pswitch_0
    new-instance v11, Lggj;

    .end local v11    # "viewHolder":Lggg;
    invoke-direct {v11, v2}, Lggj;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    .line 1089
    .restart local v11    # "viewHolder":Lggg;
    :pswitch_1
    new-instance v11, Lggk;

    .end local v11    # "viewHolder":Lggg;
    invoke-direct {v11, v2}, Lggk;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    .line 1091
    .restart local v11    # "viewHolder":Lggg;
    :pswitch_2
    new-instance v11, Lggi;

    .end local v11    # "viewHolder":Lggg;
    invoke-direct {v11, v2}, Lggi;-><init>(Landroid/app/Activity;)V

    goto :goto_1

    .line 85
    .restart local v11    # "viewHolder":Lggg;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 92
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v5    # "recentViewHolder":Lggg;
    .restart local v6    # "localId":J
    .restart local v9    # "absListView":Landroid/widget/AbsListView;
    :cond_5
    iget-object v14, p0, Lgab;->d:Landroid/os/Handler;

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lgab$1;

    move-object v3, p0

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lgab$1;-><init>(Lgab;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Lggg;JILandroid/widget/AbsListView;)V

    const-class v3, Ljava/lang/Runnable;

    iget-object v8, p0, Lgab;->b:Landroid/app/Activity;

    invoke-interface {v13, v2, v3, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v14, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1085
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x4

    return v0
.end method
