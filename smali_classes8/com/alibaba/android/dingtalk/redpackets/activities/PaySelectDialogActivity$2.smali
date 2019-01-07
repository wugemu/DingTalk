.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$2;
.super Ljava/lang/Object;
.source "PaySelectDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/PaySelectDialogActivity;->finish()V

    .line 62
    return-void
.end method
