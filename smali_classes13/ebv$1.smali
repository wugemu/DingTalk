.class final Lebv$1;
.super Ljava/lang/Object;
.source "OnlineVideoHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebv;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Lebv;


# direct methods
.method constructor <init>(Lebv;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lebv;

    .prologue
    .line 72
    iput-object p1, p0, Lebv$1;->b:Lebv;

    iput-object p2, p0, Lebv$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    if-ltz p2, :cond_0

    iget-object v0, p0, Lebv$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 77
    iget-object v0, p0, Lebv$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcng;

    .line 78
    .local v6, "menu":Lcng;
    iget v0, v6, Lcng;->a:I

    packed-switch v0, :pswitch_data_0

    .line 90
    .end local v6    # "menu":Lcng;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v6    # "menu":Lcng;
    :pswitch_0
    iget-object v0, p0, Lebv$1;->b:Lebv;

    iget-object v0, v0, Lebv;->a:Lebs$a;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lebv$1;->b:Lebv;

    iget-object v0, v0, Lebv;->a:Lebs$a;

    invoke-interface {v0}, Lebs$a;->c()V

    .line 83
    :cond_1
    iget-object v0, p0, Lebv$1;->b:Lebv;

    .line 1031
    iget-object v0, v0, Lebv;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 83
    iget-object v1, p0, Lebv$1;->b:Lebv;

    .line 2031
    iget-object v1, v1, Lebv;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 83
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "video_inner_play"

    const-string/jumbo v3, "open_other_user"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
