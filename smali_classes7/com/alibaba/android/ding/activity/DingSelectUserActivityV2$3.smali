.class final Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$3;
.super Ljava/lang/Object;
.source "DingSelectUserActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$3;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2$3;->a:Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;->a(Lcom/alibaba/android/ding/activity/DingSelectUserActivityV2;)Lbbc$a;

    move-result-object v0

    invoke-interface {v0}, Lbbc$a;->d()V

    .line 149
    return-void
.end method
