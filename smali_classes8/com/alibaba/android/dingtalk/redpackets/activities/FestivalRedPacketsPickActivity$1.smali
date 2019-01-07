.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$1;
.super Ljava/lang/Object;
.source "FestivalRedPacketsPickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->finish()V

    .line 235
    return-void
.end method
