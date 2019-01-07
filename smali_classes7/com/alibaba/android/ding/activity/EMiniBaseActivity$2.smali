.class final Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;
.super Ljava/lang/Object;
.source "EMiniBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/EMiniBaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->d:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->d:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->d:Lcom/alibaba/android/ding/activity/EMiniBaseActivity;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity;->a:Lhlm;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2, v3}, Lhlm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EMiniBaseActivity]notifyJS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/EMiniBaseActivity$2;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method
