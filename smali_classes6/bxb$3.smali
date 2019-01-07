.class public final Lbxb$3;
.super Ljava/lang/Object;
.source "VideoListeners.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxb;


# direct methods
.method public constructor <init>(Lbxb;)V
    .locals 0
    .param p1, "this$0"    # Lbxb;

    .prologue
    .line 139
    iput-object p1, p0, Lbxb$3;->a:Lbxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lbxb$3;->a:Lbxb;

    const/4 v4, 0x1

    .line 1043
    iput-boolean v4, v3, Lbxb;->k:Z

    .line 144
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->d()V

    .line 147
    :cond_0
    iget-object v3, p0, Lbxb$3;->a:Lbxb;

    .line 2043
    iget-object v3, v3, Lbxb;->f:Lbtu;

    .line 147
    if-eqz v3, :cond_1

    iget-object v3, p0, Lbxb$3;->a:Lbxb;

    .line 3043
    iget-object v3, v3, Lbxb;->f:Lbtu;

    .line 148
    invoke-virtual {v3}, Lbtu;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lbxb$3;->a:Lbxb;

    .line 4043
    iget-object v3, v3, Lbxb;->f:Lbtu;

    .line 149
    invoke-virtual {v3}, Lbtu;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setVisibility(I)V

    .line 151
    :cond_1
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    .line 4501
    iget v3, v3, Lbws;->e:I

    .line 151
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 152
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    invoke-virtual {v3}, Lbws;->b()Ljjx;

    move-result-object v2

    .line 153
    .local v2, "pushInstance":Ljjx;
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    .line 5497
    iget-object v3, v3, Lbws;->i:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v3, v5}, Ljjx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lbws;->a(Z)Lbwq;

    move-result-object v1

    .line 155
    .local v1, "livePlayer":Lbwq;
    if-eqz v1, :cond_2

    .line 5560
    iget-object v0, v1, Lbwq;->m:Lbwv;

    .line 157
    .local v0, "fullPlayerView":Lbwv;
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Lbwv;->p()V

    .line 162
    .end local v0    # "fullPlayerView":Lbwv;
    .end local v1    # "livePlayer":Lbwq;
    .end local v2    # "pushInstance":Ljjx;
    :cond_2
    const-string/jumbo v3, "onEnterBackground"

    .line 6013
    const-string/jumbo v4, "live"

    invoke-static {v4, v5, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public final onEnterForeground()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 167
    iget-object v0, p0, Lbxb$3;->a:Lbxb;

    .line 6043
    iget-boolean v0, v0, Lbxb;->k:Z

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lbxb$3;->a:Lbxb;

    .line 7043
    iput-boolean v4, v0, Lbxb;->k:Z

    .line 169
    iget-object v0, p0, Lbxb$3;->a:Lbxb;

    .line 8043
    iget-object v0, v0, Lbxb;->l:Landroid/os/Handler;

    .line 169
    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    :cond_0
    iget-object v0, p0, Lbxb$3;->a:Lbxb;

    .line 9043
    iget-object v0, v0, Lbxb;->f:Lbtu;

    .line 172
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbxb$3;->a:Lbxb;

    .line 10043
    iget-object v0, v0, Lbxb;->f:Lbtu;

    .line 173
    invoke-virtual {v0}, Lbtu;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lbxb$3;->a:Lbxb;

    .line 11043
    iget-object v0, v0, Lbxb;->f:Lbtu;

    .line 174
    invoke-virtual {v0}, Lbtu;->e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setVisibility(I)V

    .line 176
    :cond_1
    const-string/jumbo v0, "onEnterForeground"

    .line 12013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
