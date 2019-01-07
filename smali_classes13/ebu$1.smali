.class final Lebu$1;
.super Ljava/lang/Object;
.source "NormalVideoHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebu;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Lebu;


# direct methods
.method constructor <init>(Lebu;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lebu;

    .prologue
    .line 102
    iput-object p1, p0, Lebu$1;->b:Lebu;

    iput-object p2, p0, Lebu$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

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
    .line 106
    if-ltz p2, :cond_0

    iget-object v0, p0, Lebu$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 107
    iget-object v0, p0, Lebu$1;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcng;

    .line 108
    .local v6, "menu":Lcng;
    iget v0, v6, Lcng;->a:I

    packed-switch v0, :pswitch_data_0

    .line 120
    .end local v6    # "menu":Lcng;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v6    # "menu":Lcng;
    :pswitch_0
    iget-object v0, p0, Lebu$1;->b:Lebu;

    iget-object v0, v0, Lebu;->a:Lebs$a;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lebu$1;->b:Lebu;

    iget-object v0, v0, Lebu;->a:Lebs$a;

    invoke-interface {v0}, Lebs$a;->c()V

    .line 113
    :cond_1
    iget-object v0, p0, Lebu$1;->b:Lebu;

    .line 1036
    iget-object v0, v0, Lebu;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 113
    iget-object v1, p0, Lebu$1;->b:Lebu;

    .line 2036
    iget-object v1, v1, Lebu;->c:Ljava/lang/String;

    .line 113
    invoke-static {v0, v1}, Lebr;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "video_inner_play"

    const-string/jumbo v3, "open_other_user"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
