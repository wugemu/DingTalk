.class final Lcom/alibaba/android/user/settings/activity/PrivateActivity$6;
.super Landroid/text/style/ClickableSpan;
.source "PrivateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$6;->a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$6;->a:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    invoke-static {v0}, Lbyy;->a(Landroid/content/Context;)Z

    .line 289
    return-void
.end method
