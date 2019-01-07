.class final Lehx$2;
.super Ljava/lang/Object;
.source "FocusFloatingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lehx;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lehx;


# direct methods
.method constructor <init>(Lehx;)V
    .locals 0
    .param p1, "this$0"    # Lehx;

    .prologue
    .line 60
    iput-object p1, p0, Lehx$2;->a:Lehx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 63
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lehx$2;->a:Lehx;

    invoke-static {v1}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lehx$2;->a:Lehx;

    new-instance v2, Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    invoke-direct {v2, v0}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lehx;->a(Lehx;Lcom/alibaba/android/projection/widget/ProjectionFloatView;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    .line 67
    :cond_0
    iget-object v1, p0, Lehx$2;->a:Lehx;

    invoke-static {v1}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->setMovable(Z)V

    .line 68
    iget-object v1, p0, Lehx$2;->a:Lehx;

    invoke-static {v1}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v2

    .line 1165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1166
    sget-object v3, Lcom/alibaba/android/projection/widget/BaseFloatView;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1167
    sget-object v3, Lcom/alibaba/android/projection/widget/BaseFloatView;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/widget/BaseFloatView;

    .line 1169
    if-eqz v1, :cond_1

    .line 1170
    invoke-virtual {v1}, Lcom/alibaba/android/projection/widget/BaseFloatView;->a()V

    .line 1174
    :cond_1
    iget-boolean v1, v2, Lcom/alibaba/android/projection/widget/BaseFloatView;->a:Z

    if-nez v1, :cond_2

    .line 1175
    invoke-virtual {v2}, Lcom/alibaba/android/projection/widget/BaseFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/projection/widget/BaseFloatView;->a(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    .line 1177
    if-eqz v1, :cond_2

    .line 1180
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/android/projection/widget/BaseFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    sget-object v1, Lcom/alibaba/android/projection/widget/BaseFloatView;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/alibaba/android/projection/widget/BaseFloatView;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_2
    :goto_0
    iget-object v1, p0, Lehx$2;->a:Lehx;

    invoke-static {v1}, Lehx;->a(Lehx;)Legs;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lehx$2;->a:Lehx;

    invoke-static {v1}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v1

    iget-object v2, p0, Lehx$2;->a:Lehx;

    invoke-static {v2}, Lehx;->a(Lehx;)Legs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->a(Ljava/lang/Object;)V

    .line 72
    :cond_3
    iget-object v1, p0, Lehx$2;->a:Lehx;

    invoke-static {v1}, Lehx;->b(Lehx;)Lcom/alibaba/android/projection/widget/ProjectionFloatView;

    move-result-object v1

    .line 2092
    iget-object v2, v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c:Ljava/lang/Runnable;

    if-nez v2, :cond_4

    .line 2093
    new-instance v2, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;

    invoke-direct {v2, v1}, Lcom/alibaba/android/projection/widget/ProjectionFloatView$1;-><init>(Lcom/alibaba/android/projection/widget/ProjectionFloatView;)V

    iput-object v2, v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c:Ljava/lang/Runnable;

    .line 2117
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->c:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2118
    iput-boolean v6, v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->d:Z

    .line 2119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/projection/widget/ProjectionFloatView;->e:J

    .line 73
    return-void

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
