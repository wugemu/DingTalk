.class final Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$3;
.super Ljava/lang/Object;
.source "DingtalkBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->postDelayCheckNecessaryPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0}, Lbzm;->a(Landroid/content/Context;)Lbzm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity$3;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 411
    invoke-virtual {v0, v1}, Lbzm;->a(Landroid/app/Activity;)V

    .line 412
    return-void
.end method
