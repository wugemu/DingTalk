.class final Lbsz$1;
.super Ljava/lang/Object;
.source "LanBindPresenter.java"

# interfaces
.implements Lblr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsz;


# direct methods
.method constructor <init>(Lbsz;)V
    .locals 0
    .param p1, "this$0"    # Lbsz;

    .prologue
    .line 53
    iput-object p1, p0, Lbsz$1;->a:Lbsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "onStartMesh"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbsw$b;->e(I)V

    .line 77
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "code"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x5

    .line 100
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_TIMEOUT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne p1, v0, :cond_4

    .line 104
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->e(I)V

    .line 106
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto :goto_0

    .line 108
    :cond_2
    sget v0, Lbrx$g;->dt_alpha_discover_timeout:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 138
    :cond_3
    :goto_1
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->m()V

    goto :goto_0

    .line 111
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne p1, v0, :cond_5

    .line 112
    sget v0, Lbrx$g;->dt_alpha_not_administrator_alert:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 114
    :cond_5
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALONE:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne p1, v0, :cond_7

    .line 115
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_6

    .line 116
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->e(I)V

    .line 117
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto :goto_0

    .line 119
    :cond_6
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->m()V

    goto :goto_0

    .line 121
    :cond_7
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_DISCONNECTED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v0, v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-ne p1, v0, :cond_3

    .line 122
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_8

    .line 123
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget v0, Lbrx$g;->dt_alpha_connection_disconnected:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 127
    :cond_8
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_9

    .line 128
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    .line 4044
    iget-boolean v0, v0, Lbsz;->d:Z

    .line 128
    if-nez v0, :cond_3

    .line 130
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    .line 5044
    iget-boolean v0, v0, Lbsz;->c:Z

    .line 130
    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->e(I)V

    .line 132
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto/16 :goto_0

    .line 135
    :cond_9
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->m()V

    goto/16 :goto_0
.end method

.method public final a(Lbmp;)V
    .locals 6
    .param p1, "model"    # Lbmp;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x2

    .line 82
    iget-object v2, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v2}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 86
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "onShowMeshResult model is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->m()V

    goto :goto_0

    .line 90
    :cond_1
    const-string/jumbo v2, "LanBindPresenter"

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "onShowMeshResult code = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lbmp;->a:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {p1}, Lbmp;->c()Z

    move-result v3

    .line 2044
    iput-boolean v3, v2, Lbsz;->c:Z

    .line 92
    iget-object v2, p0, Lbsz$1;->a:Lbsz;

    iget-object v2, v2, Lbsz;->b:Lbsw$b;

    iget-object v3, p0, Lbsz$1;->a:Lbsz;

    .line 3144
    if-eqz p1, :cond_2

    .line 3145
    iget-object v3, p1, Lbmp;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 92
    :cond_2
    :goto_1
    :pswitch_0
    invoke-interface {v2, v0}, Lbsw$b;->e(I)V

    .line 93
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-virtual {p1}, Lbmp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbsw$b;->g(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-virtual {p1}, Lbmp;->b()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbsw$b;->a(J)V

    .line 95
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->w()V

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 3150
    goto :goto_1

    .line 3152
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    .line 3145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)V
    .locals 2
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 60
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "onBindAndActive model is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->m()V

    goto :goto_0

    .line 64
    :cond_1
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "onBindAndActive"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbsw$b;->h(Z)V

    .line 66
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    iget-object v1, v0, Lbsz;->b:Lbsw$b;

    .line 1116
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    :goto_1
    invoke-interface {v1, v0}, Lbsw$b;->b(I)V

    .line 67
    iget-object v0, p0, Lbsz$1;->a:Lbsz;

    invoke-virtual {v0}, Lbsz;->u()V

    goto :goto_0

    .line 1119
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
