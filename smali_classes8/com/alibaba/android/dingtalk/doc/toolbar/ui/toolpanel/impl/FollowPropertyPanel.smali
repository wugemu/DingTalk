.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "FollowPropertyPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->sheet_follow_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1046
    sget v0, Lbqt$d;->follow_panel_follow_area:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a:Landroid/view/View;

    .line 1047
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    sget v0, Lbqt$d;->follow_panel_follow_all:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->b:Landroid/view/View;

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    sget v0, Lbqt$d;->follow_panel_hide_all:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->c:Landroid/view/View;

    .line 1053
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    sget v0, Lbqt$d;->follow_panel_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->d:Landroid/view/View;

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    sget v0, Lbqt$d;->follow_panel_cancel_all:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->e:Landroid/view/View;

    .line 1059
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    sget v0, Lbqt$d;->follow_panel_add_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->f:Landroid/widget/TextView;

    .line 1062
    sget v0, Lbqt$d;->follow_panel_hide_all_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->g:Landroid/widget/TextView;

    .line 1063
    sget v0, Lbqt$d;->follow_panel_view_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->h:Landroid/widget/TextView;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lbqy;)V
    .locals 10
    .param p1, "toolDescriptor"    # Lbqy;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 88
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "followAll"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, "followAllData":Ljava/lang/Object;
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 90
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "followAllData":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->j:I

    .line 93
    :cond_2
    const-string/jumbo v6, "followArea"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "followAreaData":Ljava/lang/Object;
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 95
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "followAreaData":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->i:I

    .line 98
    :cond_3
    const-string/jumbo v6, "showAllFollow"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    .local v4, "showAllFollow":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 100
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "showAllFollow":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->k:I

    .line 103
    :cond_4
    const-string/jumbo v6, "showFollowChange"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 104
    .local v5, "showFollowChange":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 105
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "showFollowChange":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->m:I

    .line 108
    :cond_5
    const-string/jumbo v6, "showFollowChange"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "removeAllFollow":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 110
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "removeAllFollow":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->l:I

    .line 1117
    :cond_6
    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->i:I

    packed-switch v6, :pswitch_data_0

    .line 1129
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1130
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->f:Landroid/widget/TextView;

    sget v7, Lbqt$f;->dt_doc_follow_area:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1134
    :goto_1
    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->j:I

    packed-switch v6, :pswitch_data_1

    .line 1144
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->b:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1148
    :goto_2
    :pswitch_0
    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->m:I

    packed-switch v6, :pswitch_data_2

    .line 1160
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->d:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1161
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->h:Landroid/widget/TextView;

    sget v7, Lbqt$f;->dt_doc_check_change_info:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1165
    :goto_3
    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->k:I

    packed-switch v6, :pswitch_data_3

    .line 1177
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->c:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1178
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->g:Landroid/widget/TextView;

    sget v7, Lbqt$f;->dt_doc_show_all_follow:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    :goto_4
    iget v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->l:I

    packed-switch v6, :pswitch_data_4

    .line 1193
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->e:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1119
    :pswitch_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->f:Landroid/widget/TextView;

    sget v7, Lbqt$f;->dt_doc_unfollow_area:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1120
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1124
    :pswitch_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1139
    :pswitch_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->b:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1150
    :pswitch_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->d:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1151
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->h:Landroid/widget/TextView;

    sget v7, Lbqt$f;->dt_doc_close_change_info:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 1155
    :pswitch_5
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->d:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 1167
    :pswitch_6
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->c:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1168
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->g:Landroid/widget/TextView;

    sget v7, Lbqt$f;->dt_doc_hide_all_follow:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 1172
    :pswitch_7
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->c:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 1184
    :pswitch_8
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->e:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1188
    :pswitch_9
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->e:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1117
    .line 1134
    .line 1148
    .line 1165
    .line 1182
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 69
    const-string/jumbo v0, "followArea"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->b:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 71
    const-string/jumbo v0, "followAll"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->c:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 73
    const-string/jumbo v0, "showAllFollow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->d:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 75
    const-string/jumbo v0, "showFollowChange"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->e:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 77
    const-string/jumbo v0, "removeAllFollow"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/FollowPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
