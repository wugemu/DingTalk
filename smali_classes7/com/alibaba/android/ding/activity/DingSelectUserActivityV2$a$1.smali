.class final Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a$1;
.super Ljava/lang/Object;
.source "DingSelectUserActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a$1;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a$1;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$a;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->k(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    return-void
.end method
