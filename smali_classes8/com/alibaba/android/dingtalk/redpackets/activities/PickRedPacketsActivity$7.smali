.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;
.super Landroid/view/View$AccessibilityDelegate;
.source "PickRedPacketsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 510
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;->a:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method


# virtual methods
.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$7;->a:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method
