.class final Lbjb$1;
.super Ljava/lang/Object;
.source "DingPushHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjb;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbjb;


# direct methods
.method constructor <init>(Lbjb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbjb;

    .prologue
    .line 929
    iput-object p1, p0, Lbjb$1;->b:Lbjb;

    iput-object p2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 932
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_ARRIVED:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_TASK_REMIND:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 934
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_TASK_MODIFY:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 935
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_MEETING_REMIND:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 936
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_INVITATION_MODIFY:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->DING_INVITATION_CANCEL:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 940
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 941
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 942
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 943
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 944
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lbjb$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcjq;->a(ILjava/lang/String;)V

    .line 945
    return-void
.end method
