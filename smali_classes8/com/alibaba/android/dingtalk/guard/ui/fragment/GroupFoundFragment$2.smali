.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;
.super Ljava/lang/Object;
.source "GroupFoundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x40

    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 91
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)Z

    .line 98
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    iget-boolean v4, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-nez v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 100
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    .line 104
    .local v3, "ssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiPwd:Ljava/lang/String;

    .line 105
    .local v2, "psk":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;Z)Z

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_5

    .line 110
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 112
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_6

    .line 113
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 115
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->C()V

    .line 116
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->m()Lbsw$b;

    move-result-object v1

    .line 117
    .local v1, "dataSource":Lbsw$b;
    if-eqz v1, :cond_7

    .line 119
    invoke-interface {v1, v5}, Lbsw$b;->l(Z)V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "devServId"

    invoke-interface {v1}, Lbsw$b;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v4, "sn"

    invoke-interface {v1}, Lbsw$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v4, "mac"

    invoke-interface {v1}, Lbsw$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v4, "GroupFoundFragment"

    const-string/jumbo v5, "device_quick_connect_alpha"

    invoke-static {v4, v5, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment$2;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;

    invoke-virtual {v4, v3, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFoundFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
