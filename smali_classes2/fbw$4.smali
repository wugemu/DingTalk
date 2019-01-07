.class final Lfbw$4;
.super Ljava/lang/Object;
.source "DisplayLatestPresenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbw;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lfbw;


# direct methods
.method constructor <init>(Lfbw;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfbw;

    .prologue
    .line 120
    iput-object p1, p0, Lfbw$4;->b:Lfbw;

    iput-object p2, p0, Lfbw$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "postId"    # J
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string/jumbo v1, "circle_last_postId"

    invoke-static {v1}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 127
    .local v2, "lastPostId":J
    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lfbw$4;->b:Lfbw;

    iget-object v4, p0, Lfbw$4;->a:Landroid/app/Activity;

    .line 1147
    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1150
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v5

    .line 1151
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v6

    new-instance v7, Lfbw$5;

    invoke-direct {v7, v1, p3, p4}, Lfbw$5;-><init>(Lfbw;Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcov;

    invoke-interface {v6, v7, v1, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcov;

    .line 1150
    invoke-virtual {v5, v4, v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;Lcov;)V

    .line 132
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "User_On_Show_Red_Dot"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "User_On_Show_Red_Dot"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2017
    sget-object v1, Leda;->a:Landroid/content/Context;

    .line 134
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
