.class final Lcmv$1;
.super Ljava/lang/Object;
.source "DDPopupWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmv;


# direct methods
.method constructor <init>(Lcmv;)V
    .locals 0
    .param p1, "this$0"    # Lcmv;

    .prologue
    .line 39
    iput-object p1, p0, Lcmv$1;->a:Lcmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 42
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 1026
    iget-object v2, v2, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 42
    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v2, "popwindow_prepare_show_1"

    invoke-static {v2}, Lcps;->b(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 2026
    iget-object v2, v2, Lcmv;->d:Landroid/app/Activity;

    .line 46
    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 3026
    iget-object v2, v2, Lcmv;->d:Landroid/app/Activity;

    .line 49
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 4026
    iget-object v2, v2, Lcmv;->d:Landroid/app/Activity;

    .line 52
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 5026
    iget-object v2, v2, Lcmv;->d:Landroid/app/Activity;

    .line 53
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 6026
    iget-object v2, v2, Lcmv;->d:Landroid/app/Activity;

    .line 54
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 62
    const-string/jumbo v2, "popwindow_prepare_show_2"

    invoke-static {v2}, Lcps;->b(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 7026
    iget-object v2, v2, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 63
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 8026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 8065
    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    if-eqz v3, :cond_3

    .line 8066
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;->a()Z

    move-result v2

    .line 63
    :goto_1
    if-nez v2, :cond_4

    .line 64
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 9026
    iput-object v6, v2, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    goto :goto_0

    .line 8068
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 69
    :cond_4
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 10026
    iget-object v2, v2, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 69
    if-eqz v2, :cond_5

    .line 70
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 11026
    iget-object v2, v2, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 70
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a()V

    .line 71
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 12026
    iput-object v6, v2, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 75
    :cond_5
    const/4 v0, 0x0

    .line 76
    .local v0, "cachePopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 13026
    iget-object v2, v2, Lcmv;->e:Ljava/util/Map;

    .line 76
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 14026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 76
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 77
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 15026
    iget-object v2, v2, Lcmv;->e:Ljava/util/Map;

    .line 77
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 16026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 77
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 17026
    iget-object v3, v3, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 18021
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 77
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cachePopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 79
    .restart local v0    # "cachePopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_6
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 18026
    iget-object v2, v2, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 79
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 19026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 19072
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    if-eqz v4, :cond_7

    .line 19073
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    invoke-virtual {v4, v3, v0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 19075
    :cond_7
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 82
    .local v1, "popupWindowToShow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v2, "popwindow_real_show"

    invoke-static {v2}, Lcps;->b(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 20026
    iget-object v2, v2, Lcmv;->e:Ljava/util/Map;

    .line 84
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 21026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 84
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    .line 85
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 22026
    iget-object v2, v2, Lcmv;->e:Ljava/util/Map;

    .line 85
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 23026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 85
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_8
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 24026
    iget-object v2, v2, Lcmv;->e:Ljava/util/Map;

    .line 87
    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 25026
    iget-object v3, v3, Lcmv;->d:Landroid/app/Activity;

    .line 87
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 26026
    iget-object v3, v3, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 27021
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 87
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    iget-object v3, p0, Lcmv$1;->a:Lcmv;

    .line 27026
    iget-object v3, v3, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 28026
    iput-object v3, v2, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 89
    iget-object v2, p0, Lcmv$1;->a:Lcmv;

    .line 29026
    iput-object v6, v2, Lcmv;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 91
    new-instance v2, Lcmv$1$1;

    invoke-direct {v2, p0}, Lcmv$1$1;-><init>(Lcmv$1;)V

    .line 29157
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->a:Landroid/widget/PopupWindow$OnDismissListener;

    goto/16 :goto_0
.end method
