.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "FestivalRedPacketsPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 852
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;->a:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method


# virtual methods
.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$2;->a:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method
