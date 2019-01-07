.class public final Lhea;
.super Lhdu;
.source "LiveDelegate.java"


# instance fields
.field public b:Lbyt;

.field public c:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field private d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lhdu;-><init>(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 140
    if-eqz p1, :cond_0

    iget-object v5, p0, Lhea;->b:Lbyt;

    if-nez v5, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 148
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 149
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 150
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lhea;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "index":I
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "live"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "LiveDelegate"

    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v10, "transparent error="

    aput-object v10, v9, v11

    .line 156
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 155
    invoke-static {v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lhea;Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;IIIIILjava/lang/String;I)V
    .locals 9
    .param p0, "x0"    # Lhea;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Live;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # I

    .prologue
    .line 29
    .line 2080
    invoke-static {}, Lhea;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Lhea;->a:Landroid/app/Activity;

    sget v1, Lhdn$h;->webview_frame_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2084
    iget-object v1, p0, Lhea;->a:Landroid/app/Activity;

    sget v2, Lhdn$h;->webview_frame:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    iput-object v1, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    .line 2085
    if-eqz v0, :cond_0

    iget-object v1, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    if-nez v1, :cond_1

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2088
    :cond_1
    iget-object v1, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->setPenetrateEnabled(Z)V

    .line 2089
    iget-object v1, p0, Lhea;->b:Lbyt;

    if-nez v1, :cond_2

    .line 2090
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v1

    iget-object v2, p0, Lhea;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Landroid/app/Activity;Landroid/view/ViewGroup;)Lbyt;

    move-result-object v0

    iput-object v0, p0, Lhea;->b:Lbyt;

    .line 2092
    :cond_2
    iget-object v0, p0, Lhea;->b:Lbyt;

    new-instance v1, Lhea$2;

    invoke-direct {v1, p0, p1}, Lhea$2;-><init>(Lhea;Lcom/alibaba/lightapp/runtime/plugin/biz/Live;)V

    invoke-virtual {v0, v1}, Lbyt;->a(Lbyv;)V

    .line 2134
    iget-object v0, p0, Lhea;->b:Lbyt;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lbyt;->a(Ljava/lang/String;IIIIILjava/lang/String;I)Z

    .line 2136
    iget-object v0, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    invoke-direct {p0, v0}, Lhea;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static f()Z
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "live_h5_native_player_disabled"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lhea;->g()V

    .line 45
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lhea;->b:Lbyt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhea;->b:Lbyt;

    invoke-virtual {v0}, Lbyt;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 186
    iget-object v0, p0, Lhea;->b:Lbyt;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lhea;->b:Lbyt;

    invoke-virtual {v0}, Lbyt;->e()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lhea;->b:Lbyt;

    .line 190
    :cond_0
    iget-object v0, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->setPenetrateEnabled(Z)V

    .line 193
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 196
    iget-object v0, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lhea;->d:Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;

    .line 1080
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/lightapp/runtime/view/DWPenetrateRelativeLayout;->a:Z

    .line 199
    :cond_0
    return-void
.end method
