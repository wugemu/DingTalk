.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$4;
.super Ljava/lang/Object;
.source "FestivalRedPacketSendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketSendActivity;->finish()V

    .line 397
    return-void
.end method
