.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20$1;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SessionFragmentV2"

    const-string/jumbo v2, "chat_put_down_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->y(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldyy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->y(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldyy$a;

    move-result-object v0

    invoke-interface {v0}, Ldyy$a;->d()V

    .line 1072
    :cond_0
    return-void
.end method
