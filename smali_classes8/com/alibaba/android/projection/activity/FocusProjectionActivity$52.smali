.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 2880
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 2883
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->j(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Z)V

    .line 2885
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-boolean v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;->a:Z

    invoke-static {v0, v2, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZZ)V

    .line 2887
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$52;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->T(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 2888
    return-void
.end method
